(function ($) {

    EditClasslist = function (options) {

        // Private variables
        var self = this;
        this.options = null;

        /**
         * Constructor
         * @param options
         * @returns {*}
         * @private
         */
        var _initialize = function (options) {
            self.options = options;
            self.request_token = options.request_token;
            if (!self.request_token) {
                alert('Request Token wurde nicht initialisiert.');
                return false;
            }

            // Add events
            $('tr.row_student td.col_1, tr.row_student td.col_2, tr.row_student td.col_3').on('click', function (event) {

                event.stopPropagation();
                if (!$(this).hasClass('active')) {
                    self.editRow(this);
                }
            });

            // Add events
            $('tr.row_student td.col_4 .delete_row').on('click', function (event) {
                event.stopPropagation();
                self.deleteRow(this);
            });

            // Add events
            $('tr.row_student td.col_5 .edit_row').on('click', function (event) {
                event.stopPropagation();
                self.editRow(this);
            });
            
            // Add events
            $('tr.row_student td.col_5 .submit_row').on('click', function (event) {
                event.stopPropagation();
                self.submitRow(this);
            });

            return this;

        };

        /**
         * Public Method
         * @param elIcon
         */
        this.editRow = function (elIcon) {
            resetTable();

            var elRow = $(elIcon).closest('tr');
            $(elRow).find('td').each(function () {
                $(this).addClass('active');
                var strFieldValue = $(this).find('.content').text();
                // Input form elements
                if ($(this).hasClass('col_lastname')) {
                    $('<input>', {
                        'class': 'text-input form-control',
                        name: 'lastname',
                        type: 'text',
                        value: strFieldValue
                    }).appendTo($(this));
                }

                if ($(this).hasClass('col_firstname')) {
                    $('<input>', {
                        'class': 'text-input form-control',
                        name: 'firstname',
                        type: 'text',
                        value: strFieldValue
                    }).appendTo($(this));
                }

                if ($(this).hasClass('col_gender')) {
                    var elInputGender = $('<select>', {
                        'class': 'gender form-control',
                        name: 'gender'
                    }).appendTo($(this));
                    var objGender = {
                        'female': 'weiblich',
                        'male': 'männlich'
                    };
                    $.each(objGender, function (index, value) {
                        $("<option>", {value: index, text: value}).appendTo(elInputGender);
                    });
                    if (strFieldValue == 'weiblich') {
                        elInputGender.find('option')[0].selected = true;
                    } else {
                        elInputGender.find('option')[1].selected = true;
                    }
                }
            });
        };

        /**
         *
         * @private
         */
        var _resetTable = function () {
            $('.row_student td.col_1 input, .row_student td.col_2 input, .row_student td.col_3 select').remove();

            $('.active').each(function () {
                $(this).removeClass('active');
            });

            // reenumerate first col
            var i = 1;
            $('td.col_0').each(function () {
                $(this).text(i);
                i++;
            });
        };

        /**
         * Resort rows by gender, lastname, firstname
         * @private
         */
        var _sortTable = function () {

            var arrRows = [];
            var i = 0;
            $('tr.row_student').each(function () {
                var sortStr = $(this).find('td.col_gender .content').text() + '-' + $(this).find('td.col_lastname .content').text() + '-' + $(this).find('td.col_firstname .content').text() + '-' + i;
                arrRows[i] = {
                    'sortString': sortStr,
                    'row': $(this).html(),
                    'lastname': $(this).find('td.col_1 .content').text(),
                    'firstname': $(this).find('td.col_2 .content').text(),
                    'gender': $(this).find('td.col_3 .content').text(),
                    'data-id': $(this).find('td.col_5 .edit_row').attr('data-id')
                };
                i++;
            });
            arrRows.sort(_dynamicSort('sortString'));

            // Insert rows in a correct alphabetical order
            $('tr.row_student').each(function (key) {
                $(this).find('.col_0').text(key + 1);
                $(this).find('.col_1 .content').text(arrRows[key]['lastname']);
                $(this).find('.col_2 .content').text(arrRows[key]['firstname']);
                $(this).find('.col_3 .content').text(arrRows[key]['gender']);
                $(this).find('.col_4 .delete_row').attr('data-id', arrRows[key]['data-id']);
                $(this).find('.col_5 .edit_row').attr('data-id', arrRows[key]['data-id']);
            });
        };

        /**
         *
         * @param property
         * @returns {Function}
         * @private
         */
        var _dynamicSort = function (property) {
            var sortOrder = 1;
            if (property[0] === "-") {
                sortOrder = -1;
                property = property.substr(1);
            }
            return function (a, b) {
                var result = (a[property] < b[property]) ? -1 : (a[property] > b[property]) ? 1 : 0;
                return result * sortOrder;
            }
        };


        /**
         * Public Method
         * @param elButton
         */
        this.deleteRow = function (elButton) {


            if (!confirm('Sollen der Schüler und die mit ihm verknüpften Bewertungen unwiderruflich gelöscht werden?')) {
                return;
            }
            var intStudentId = $(elButton).attr('data-id');

            var request = $.ajax({
                url: '?isAjax=true&act=delete_student',
                method: 'post',
                data: {
                    id: intStudentId,
                    REQUEST_TOKEN: self.request_token
                },
                dataType: 'json'
            });
            request.done(function (json) {
                if (json) {
                    if (json.status == 'success') {
                        $(elButton).closest('tr').remove();
                        _resetTable();
                    }
                    if (json.status == 'error') {
                        alert('Beim Versuch den Datensatz zu löschen, kam es zu einem Fehler.');
                    }
                }
            });
            request.fail(function () {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
            });
        };

        /**
         * Public Method
         * @param elButton
         */
        this.submitRow = function (elButton) {
            var intStudentId = $(elButton).attr('data-id');
            var elRow = $(elButton).closest('tr');
            var lastname = $(elRow).find('.col_lastname input').val().trim();
            var firstname = $(elRow).find('.col_firstname input').val().trim();
            var gender = $(elRow).find('.col_gender select').val();

            var blnError = false;
            if (firstname == '' || lastname == '') {
                alert('Bitte einen Namen eingeben!');
                blnError = true;
            }

            if (!firstname.toString().match(/^([ \u00c0-\u01ffa-zA-Z'\-])+$/)) {
                alert('Zeichenkette enthält ungültige Zeichen. Bitte einen gültigen Vornamen eingeben!');
                blnError = true;
            }
            if (!lastname.match(/^([ \u00c0-\u01ffa-zA-Z'\-])+$/)) {
                alert('Zeichenkette enthält ungültige Zeichen. Bitte einen gültigen Nachnamen eingeben!');
                blnError = true;
            }
            if (blnError)return;
            var request = $.ajax({
                url: '?isAjax=true&act=update_classlist',
                method: 'post',
                data: {
                    id: intStudentId,
                    lastname: lastname,
                    firstname: firstname,
                    gender: gender,
                    REQUEST_TOKEN: self.request_token
                },
                dataType: 'json'

            });
            request.done(function (json) {
                if (json) {
                    //var json = JSON.decode(json);
                    if (json.status == 'success') {
                        $(elRow).find('.col_lastname span').text(lastname);
                        $(elRow).find('.col_firstname span').text(firstname);
                        var strGender = gender == 'female' ? 'weiblich' : 'männlich';
                        $(elRow).find('.col_gender span').text(strGender);
                        _resetTable();
                        _sortTable();
                    }
                    if (json.status == 'error') {
                        alert(json.message);
                    }
                }
            });
            request.fail(function () {
                alert('Fehler: Die Anfrage konnte nicht gespeichert werden! Überprüfe die Internetverbindung.');
            });
        };

        // Call Constructor
        _initialize(options);


    };

})(jQuery);