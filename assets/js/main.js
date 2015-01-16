(function () {

    /** Frontend class provides several methods for the frontend usage **/
        // change input to lowercase
    window.addEvent('domready', function () {

        $$('input[name=email]').setProperty('placeholder', 'vorname.nachname@ettiswil.educanet2.ch');

        $$('input[name=username]').addEvents({
            input: function () {
                this.value = this.value.toLowerCase();

                this.value = this.value.replace(' ', '');
                this.value = this.value.replace('.', '');
                this.value = this.value.replace('ä', 'ae');
                this.value = this.value.replace('ö', 'oe');
                this.value = this.value.replace('ü', 'ue');
                this.value = this.value.replace('è', 'e');
                this.value = this.value.replace('é', 'e');
                this.value = this.value.replace('à', 'a');
                this.value = this.value.replace(/[^a-z]/gmi, " ").replace(/\s+/g, "");
            }
        });

        $$('.mod_account_settings input[name=email]').addEvents({
            input: function () {
                this.value = this.value.toLowerCase();
            }
        });
    });


})(document.id);

