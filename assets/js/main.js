/** Frontend class provides several methods for the frontend usage **/

// change input to lowercase
window.addEvent('domready', function () {
    $$('.mod_login input[name=username]').addEvents({
        keyup: function () {
            this.value = this.value.toLowerCase();
        }
    });
});
