(function () {

    /** Frontend class provides several methods for the frontend usage **/
    // change input to lowercase
    window.addEvent('domready', function () {
        $$('.mod_login input[name=username]').addEvents({
            input: function () {
                this.value = this.value.toLowerCase();
            }
        });

        $$('.mod_account_settings input[name=email]').addEvents({
            input: function () {
                this.value = this.value.toLowerCase();
            }
        });
    });
})(document.id);