/** Frontend class provides several methods for the frontend usage **/
// properties are directly passed to `create` method

EditTable = new Class({
    initialize: function (userIsOwner, isClassTeacher) {
        this.userIsOwner = userIsOwner;
        this.userIsClassTeacher = isClassTeacher;
        if (!this.userIsOwner) {
            $$('img.delete_icon').each(function (elImg) {
                elImg.setProperty('title', 'keine Berechtigung');
                elImg.addEvent('click', function (event) {
                    alert("Keine Berechtigung diesen Datensatz zu loeschen.");
                });
            });

            $$('img.edit_icon').each(function (elImg) {
                elImg.setProperty('title', 'keine Berechtigung');
                elImg.addEvent('click', function (event) {
                    alert("Keine Berechtigung diesen Datensatz zu bearbeiten.");
                });
            });
        }
        return this;
    },

    deleteEntries: function (intValue, mode) {
        var self = this;
        intValue = intValue.toString();
        if (!this.userIsOwner) return;

        var postParams = $H({
            REQUEST_TOKEN: this.request_token,
            strMode: mode,
            intIndex: intValue
        });

        var url = this.deleteUrl;
        new Ajax.Request(url, {
            method: "post",
            parameters: postParams,
            onComplete: function (transport) {
                var json = transport.responseJSON;
                if (json.response == 'deleted') {
                    var intIndex = json.intIndex;
                    self.resetTable();
                    //row or col
                    var cssSelector = ((mode == 'delete_row') ? 'td.row_' + intIndex + '.skillCell' : 'td.skillCell.col_' + intIndex);
                    $$(cssSelector.toString()).each(function (elCell) {
                        elCell.update('&nbsp;');
                    });
                }
            }
        });
    },

    sendToServer: function (elInput) {
        var self = this;
        var intValue = elInput.value.toString();
        if (intValue == '0') {
            elInput.value = '';
        }
        if (intValue == '' || intValue === false || intValue == "1" || intValue == "2" || intValue == "3" || intValue == "4") {
            var match = elInput.id.match(/^skillInput_s_(.*)_k_(.*)$/);
            intStudentId = match[1].toString();
            intCriterium = match[2].toString();
            if (intValue === false) {
                intValue = 0;
            }

            var req = new Request({
                url: 'ajax.php?action=fmd&id=' + self.elementId + '&act=update',
                method: 'post',
                data: {
                    REQUEST_TOKEN: this.request_token,
                    student: intStudentId.toString(),
                    value: intValue.toString(),
                    skill: intCriterium.toString(),
                    teacher: self.teacher.toString(),
                    subject: self.subject.toString(),
                    class: self.class.toString()
                },

                onRequest: function () {
                    $$('#requestStatusBox p').each(function (el) {
                        el.innerHTML = 'saving data...';
                        el.setStyles({visibility: 'visible'});
                    });
                },

                onComplete: function (response) {

                    // Falls Uebertragung erfolgreich war,
                    // wird die Zelle kurz gruen eingefaerbt und nach 1s wieder zurueckgefaerbt.
                    var json = JSON.decode(response);

                    if (json.status == 'success') {
                        elInput.addClass('valueSaved');
                        window.setTimeout(function () {
                            elInput.removeClass('valueSaved');
                            $$('#requestStatusBox p').each(function (el) {
                                el.setStyles({visibility: 'hidden'});
                            });
                        }, 2000);
                    } else {
                        // alert error message, if there is one
                        if (json.message) {
                            alert(json.message)
                        }
                    }
                },

                onException: function (requestInstance, objException) {
                    /*
                     var arrRequestInfo = $$('#requestStatusBox p');
                     var requestInfo = arrRequestInfo[0];
                     requestInfo.update('Saving error! <br><br>Please check your connection!');

                     window.setTimeout(function () {
                     elInput.removeClassName('valueSaved');
                     requestInfo.setStyles({visibility: 'hidden'});
                     }, 2000);
                     elInput.value = '';
                     */
                }
            });
            req.send();
        }
        else {
            alert("Bitte einen gültigen Wert eingeben.\n Gültige Werte sind 1, 2, 3 oder 4.");
            this.colorizeBg(elInput, 'orange');
            window.setTimeout(function () {
                elInput.value = '';
                self.colorizeBg(elInput, '#FFFF99');
            }, 1000);
        }
    },

    edit: function (editIcon, intValue, mode) {
        var self = this;
        if (!this.userIsOwner) return;
        studentId = null;
        criteriumId = null;

        if (mode == 'edit_row') studentId = intValue;
        if (mode == 'edit_col') criteriumId = intValue;

        this.resetTable();
        //add the grey bgImage
        if (mode == 'edit_col') {
            $$('td.description.col_' + intValue).each(function (elCell) {
                var old = elCell.getStyle('background-image');
                var arrBg = old.split('fff');
                elCell.setStyle('background-image', arrBg[0] + 'ccc' + arrBg[1]);
            });
        }

        var td = editIcon.getParent('td');

        //toggle the edit icon ...
        editIcon.toggle();

        //... and replace it with a submit button.
        var submit = new Element('input', {
            'type': 'submit',
            'name': 'submit_button',
            'id': 'submit_button',
            'class': 'submit_button',
            'value': 'go!'
        });
        submit.setStyle('opacity', 0);
        submit.addEvent('click', this.toggleSubmitButton(submit));
        submit.inject(td);
        submit.fade('in');

        // colorize the background for the active row and insert a text field
        var cssSelector = mode === 'edit_row' ? 'table.beurteilungstabelle td.row_' + studentId : 'table.beurteilungstabelle td.col_' + criteriumId;
        $$(cssSelector).each(function (elCell) {
            elCell.setStyle('background-color', '#ccc');
            // insert the textField
            if (elCell.hasClass('skillCell')) {
                //alert(elCell.id);
                self.replaceWithTextField(elCell);
            }
        });
    },

    toggleSubmitButton: function (elementSB) {
        var self = this;
        window.setTimeout(function () {
            //remove the submit button and reset table
            self.resetTable();
        }, 500);
    },

    resetTable: function () {
        var self = this;
        //disable icons, to prevent manipulations unless the request has finished
        this.toggleIcons('hidden');

        //remove submit-buttons
        $$('.submit_button').each(function (sb) {
            $(sb).destroy();
        });

        //toggle visible the edit icons
        $$('.edit_icon').each(function (elementEditIcon) {
            $(elementEditIcon).setStyles({display: 'inline'});
        });

        //set to bgImage with the white background
        var i = 0;
        $$('td.description').each(function (elCell) {
            i++;
            elCell.setStyles({'background-image': "url('/system/modules/buf/assets/images/Kriterien/fff/" + i + ".png')"});
        });

        //set the background to white
        var varRequest = '';


        /*
         //Start drift request
         if (varRequest !== '' && this.userIsClassTeacher) {
         var postParams = $H({
         REQUEST_TOKEN: self.request_token,
         arrRequest: varRequest
         });

         var url = self.getDriftUrl;
         new Ajax.Request(url, {
         method: "post",
         parameters: postParams,
         onComplete: function (transport) {
         var json = transport.responseJSON;
         if (json.arrDrift != '') {
         json.arrDrift.each(function (v) {
         if (v.cellId !== '' && v.value != '') {
         var studId = 'nothing';
         var colId = 'nothing';
         v.cellId.sub(/skillCell_s_(.*)_k_(.*)/, function (match) {
         studId = match[1];
         colId = match[2];
         });
         if (colId == criteriumId || studId == studentId) {
         // only show the drift if the cell isn't active
         } else {
         var cell = $(v.cellId);
         cell.update();
         cell.update(v.value);

         }
         }
         });
         }
         self.toggleIcons('visible');
         },
         onException: function (requestInstance, objException) {
         //alert('Fehler: Die Anfrage konnte nicht gespeichert werden!');
         self.toggleIcons('visible');
         }
         });
         } else {
         //enable icons
         this.toggleIcons('visible');
         }
         */
    },

    toggleIcons: function (mode) {
        if (mode != 'visible' && mode != 'hidden')
            alert('Error: visibility must be "hidden" or "visible"!!!');

        //mode: visible || hidden
        $$('img.edit_icon').each(function (icon) {
            icon.setStyles({visibility: '' + mode + ''});
        });
        $$('img.delete_icon').each(function (icon) {
            icon.setStyles({visibility: '' + mode + ''});
        });
    },


    replaceWithTextField: function (elCell) {
        var self = this;
        var match = elCell.id.match(/^skillCell_s_(.+?)_k_(.+?)$/);
        var StudentId = match[1].toString();
        var Criterium = match[2].toString();

        var intStudentId = StudentId;
        var intCriterium = Criterium;

        // for firefox, chrome, opera
        var value = (elCell.innerHTML == '' || elCell.innerHTML == '&nbsp;' || elCell.innerHTML == ' ') ? '' : elCell.innerHTML.trim();

        //remove innerText of the cell
        elCell.innerHTML = '';
        // insert the textfield into the cell
        var input = new Element('input', {
            'type': 'text',
            'name': 'skillInput_s_' + intStudentId + '_k_' + intCriterium,
            'id': 'skillInput_s_' + intStudentId + '_k_' + intCriterium,
            'class': 'textField',
            'tabindex': intCriterium.toString(),
            'value': value.trim(),
            'size': '1',
            'maxlength': '1'
        });
        // add the onchange event to the input field
        input.addEvent('focus', function (event) {
            event.stopPropagation();
            this.addEvent('change', function (event) {
                event.stopPropagation();
                self.sendToServer(input);
            });
        });
        input.setStyle('opacity', 0);
        input.inject(elCell);
        input.fade('in');
    },

    colorizeBg: function (element, color) {
        element.setStyle('background-color', color);
    }


});

