/** Frontend class provides several methods for the frontend usage **/

// change input to lowercase
window.addEvent('domready', function () {
    $$('.mod_login input[name=username]').addEvents({
        keyup: function () {
            this.value = this.value.toLowerCase();
        },
        blur: function () {
            this.value = this.value.toLowerCase();
        }
    });

    $$('.mod_account_settings input[name=email]').addEvents({
        keyup: function () {
            this.value = this.value.toLowerCase();
        },
        blur: function () {
            this.value = this.value.toLowerCase();
        }
    });

});
