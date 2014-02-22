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

    deleteEntries: function (elLink, intValue, mode) {
        var self = this;
        intValue = intValue.toString();
        if (!this.userIsOwner) return;
        var req = new Request({
            url: 'ajax.php?action=fmd&id=' + self.elementId + '&act=delete_row_or_col',
            method: "post",
            data: {
                REQUEST_TOKEN: self.request_token,
                mode: mode,
                colOrRow: intValue,
                teacher: self.teacher.toString(),
                subject: self.subject.toString(),
                class: self.class.toString()
            },
            onComplete: function (response) {
                if (response) {
                    var json = JSON.decode(response);
                    if (json.status == 'deleted') {
                        self.resetTable();
                    }
                }
            },
            onException: function (headerName, value) {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
            },
            onFailure: function (xhr) {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
            }
        });
        req.send();
    },

    sendToServer: function (elInput) {
        var self = this;
        var elCell = elInput.getParent('td');

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
                    REQUEST_TOKEN: self.request_token,
                    student: intStudentId.toString(),
                    value: intValue.toString(),
                    skill: intCriterium.toString(),
                    teacher: self.teacher.toString(),
                    subject: self.subject.toString(),
                    class: self.class.toString()
                },

                onRequest: function () {
                    $$('#requestStatusBox p').each(function (el) {
                        el.set('text', 'saving data...');
                        el.setStyles({visibility: 'visible'});
                    });
                },

                onComplete: function (response) {
                    if (response) {
                        var json = JSON.decode(response);
                        if (json.status == 'success') {
                            elInput.addClass('valueSaved');
                            var highlight = (function () {
                                elInput.removeClass('valueSaved');
                                $$('#requestStatusBox p').each(function (el) {
                                    el.setStyles({visibility: 'hidden'});
                                });
                            }.delay(2000));
                        } else {
                            if (json.message) {
                                alert(json.message)
                            }
                        }
                    }
                },
                onException: function (headerName, value) {
                    alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
                },
                onFailure: function (xhr) {
                    alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
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

        // reset table
        this.resetTable();

        if (mode == 'edit_row') studentId = intValue;
        if (mode == 'edit_col') criteriumId = intValue;

        //add the grey bgImage
        if (mode == 'edit_col') {
            $$('td.description.col_' + intValue).each(function (elCell) {
                var old = elCell.getStyle('background-image');
                var arrBg = old.split('fff');
                elCell.setStyle('background-image', arrBg[0] + 'ccc' + arrBg[1]);
            });
        }

        var submitButton = editIcon.getSiblings('.submit_button')[0];
        submitButton.addEvent('click', function (event) {
            event.stopPropagation();
            self.resetTable();
        });


        // colorize the background for the active row and insert a text field
        var cssSelector = mode == 'edit_row' ? 'table.beurteilungstabelle td.row_' + studentId : 'table.beurteilungstabelle td.col_' + criteriumId;
        $$(cssSelector).each(function (elCell) {
            elCell.addClass('active');
            if (elCell.hasClass('skillCell')) {
                self.injectInputField(elCell);
            }
        });
    },
    updateTeachersDeviationTolerance: function(elSelect)
    {
        var self = this;
        var req = new Request({
            method: "post",
            url: 'ajax.php?action=fmd&id=' + self.elementId + '&act=updateTeachersDeviationTolerance',
            data: {
                REQUEST_TOKEN: self.request_token,
                tolerance: elSelect.options[elSelect.selectedIndex].value
            },
            onComplete: function (response) {
                if (response) {
                    var json = JSON.decode(response);
                    if (json.status == 'success') {
                        self.resetTable();
                    }
                }
            },
            onException: function (headerName, value) {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
            },
            onFailure: function (xhr) {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
            }
        });
        req.send();
    },
    resetTable: function () {
        var self = this;
        $$('.beurteilungstabelle .textField').each(function (el) {
            el.destroy();
        });

        $$('.beurteilungstabelle .active').each(function (el) {
            el.removeClass('active');
        });


        //set to bgImage with the white background
        var i = 0;
        $$('td.description').each(function (elCell) {
            i++;
            elCell.setStyles({'background-image': "url('/system/modules/buf/assets/images/Kriterien/fff/" + i + ".png')"});
        });

        var req = new Request({
            method: 'post',
            url: 'ajax.php?action=fmd&id=' + self.elementId + '&act=reset_table&class=' + self.class + '&subject=' + self.subject + '&teacher=' + self.teacher,
            data: {
                REQUEST_TOKEN: self.request_token
            },
            onComplete: function (response) {
                if (response) {
                    var json = JSON.decode(response);
                    //var json = JSON.stringify(json.rows);
                    Object.each(json.rows, function (row, key) {

                        var match = key.match(/^student_(.*)$/);
                        var studentId = match[1].toString();
                        for (var col = 1; col <= 8; col++) {
                            if (document.id('skillCell_s_' + studentId + '_k_' + col)) {
                                var cell = document.id('skillCell_s_' + studentId + '_k_' + col);
                                var rating = row['skill' + col]['value'];
                                if (rating == 0) {
                                    rating = '';
                                }
                                cell.getChildren('.rating')[0].set('text', rating);

                                if (cell.getChildren('.deviation').length) {
                                    cell.getChildren('.deviation')[0].destroy();
                                }

                                // display deviation
                                var deviation = row['skill' + col]['deviation'];
                                if (deviation != '') {
                                    // update deviation
                                    var color = row['skill' + col]['color'];
                                    var elSpan = new Element('span', {
                                        'class': 'deviation'
                                    });
                                    elSpan.innerHTML = '<br>Abw:<br>' + deviation;
                                    elSpan.setStyle('color', '#' + color);
                                    elSpan.inject(cell);
                                }
                            }
                        }
                    });
                }
            },
            onException: function (headerName, value) {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
            },
            onFailure: function (xhr) {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
            }
        });
        req.send();
    },

    injectInputField: function (elCell) {
        var self = this;
        var match = elCell.id.match(/^skillCell_s_(.+?)_k_(.+?)$/);
        var studentId = match[1].toString();
        var col = match[2].toString();

        // for firefox, chrome, opera
        var rating = elCell.getChildren('.rating')[0].get('text').trim();

        // insert the textfield into the cell
        var input = new Element('input', {
            'type': 'text',
            'name': 'skillInput_s_' + studentId + '_k_' + col,
            'id': 'skillInput_s_' + studentId + '_k_' + col,
            'class': 'textField',
            'tabindex': col.toString(),
            'value': rating,
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
        input.inject(elCell);
    },

    colorizeBg: function (element, color) {
        element.setStyle('background-color', color);
    }
});

