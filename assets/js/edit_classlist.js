/** Frontend class provides several methods for the frontend usage **/

EditClasslist = new Class({

    request_token: null,

    element_id: null,

    initialize: function (options) {
        this.options = options;
        this.request_token = options.request_token;
        this.element_id = options.element_id;
        if(!this.request_token || !this.element_id){
            alert('Request Token oder Element Id wurden nicht dem initialisiert.');
            return;
        }
        return this;
    },

    editRow: function (elIcon) {
        var self = this;
        self.resetTable();

        var elRow = elIcon.getParent('tr');
        elRow.getChildren('td').each(function (cell) {
            cell.addClass('active');
        });

        // lastname
        var elSpanLastname = elRow.getElements('td.col_lastname .content')[0];
        var elInputLastname = elSpanLastname.getSiblings('input')[0];
        elInputLastname.set('value', elSpanLastname.innerHTML);

        // firstname
        var elSpanFirstname = elRow.getElements('td.col_firstname .content')[0];
        var elInputFirstname = elSpanFirstname.getSiblings('input')[0];
        elInputFirstname.set('value', elSpanFirstname.innerHTML);

        // gender
        var elCellGender = elRow.getChildren('td.col_gender')[0];
        var elSpanGender = elRow.getElements('td.col_gender span.content')[0];
        var elInputGenderM = elCellGender.getElements('option')[0];
        var elInputGenderF = elCellGender.getElements('option')[1];
        if (elSpanGender.innerHTML == 'male') {
            elInputGenderM.selected = true;
        } else {
            elInputGenderF.selected = true;
        }
    },

    resetTable: function () {
        $$('.active').each(function (el) {
            el.removeClass('active');
        });

        // reenumerate first col
        var i = 0;
        $$('td.col_0').each(function (cell) {
            if (i == 0) {
                i++;
                return;
            }
            cell.set('text', i);
            i++;
        });

    },

    deleteRow: function (elIcon, intStudentId) {

        var self = this;
        if (!confirm('Sollen der Schüler und die mit ihm verknüpften Bewertungen unwiderruflich gelöscht werden?')) {
            return;
        }
        var req = new Request({
            url: 'ajax.php?action=fmd&id=' + self.element_id + '&act=delete_student',
            method: 'post',
            data: {
                id: intStudentId,
                REQUEST_TOKEN: self.request_token
            },
            onComplete: function (response) {
                if (response) {
                    var json = JSON.decode(response);
                    if (json.status == 'success') {
                        elIcon.getParent('tr').destroy();
                        self.resetTable();
                    }
                    if (json.status == 'error') {
                        alert('Beim Versuch den Datensatz zu löschen, kam es zu einem Fehler.');
                        return;
                    }
                }
            },
            onException: function (headerName, value) {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
                return;
            },
            onFailure: function (xhr) {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
                return;
            }
        });
        req.send();
    },

    send: function (elButton, intStudentId) {
        var self = this;
        var elRow = elButton.getParent('tr');
        var lastname = elRow.getElements('.col_lastname input')[0].getProperty('value').trim();
        var firstname = elRow.getElements('.col_firstname input')[0].getProperty('value').trim();
        var gender = elRow.getElements('.col_gender option')[0].selected ? 'male' : 'female';

        var blnError = false;
        if (firstname == '' || lastname == '') {
            alert('Bitte einen Namen eingeben!');
            blnError = true;
        }

        if (!lastname.toString().match(/^([ \u00c0-\u01ffa-zA-Z'\-])+$/)) {
            alert('Zeichenkette enthält ungültige Zeichen. Bitte einen gültigen Nachnamen eingeben!');
            blnError = true;
        }
        if (!lastname.match(/^([ \u00c0-\u01ffa-zA-Z'\-])+$/)) {
            alert('Zeichenkette enthält ungültige Zeichen. Bitte einen gültigen Vornamen eingeben!');
            blnError = true;
        }
        if (blnError)return;

        var req = new Request({
            url: 'ajax.php?action=fmd&id=' + self.element_id + '&act=update_classlist',
            method: 'post',
            data: {
                id: intStudentId,
                lastname: lastname,
                firstname: firstname,
                gender: gender,
                REQUEST_TOKEN: self.request_token
            },
            onComplete: function (response) {
                if (response) {
                    var json = JSON.decode(response);
                    if (json.status == 'success') {
                        elRow.getElements('.col_lastname span')[0].set('text', lastname);
                        elRow.getElements('.col_firstname span')[0].set('text', firstname);
                        elRow.getElements('.col_gender span')[0].set('text', gender);
                        self.resetTable();
                    }
                    if (json.status == 'error') {
                        alert(json.message);
                        return;
                    }
                }
            },
            onException: function (headerName, value) {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
                return;
            },
            onFailure: function (xhr) {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
                return;
            }
        });
        req.send();
    }
});

