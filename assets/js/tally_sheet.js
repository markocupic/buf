/** Frontend class provides several methods for the frontend usage **/
TallySheet = new Class({
    request_token: null,
    element_id: null,
    request_id: null,

    initialize: function (options) {
        this.options = options;
        this.request_token = options.request_token;
        this.element_id = options.element_id;

        if (!this.request_token || !this.element_id) {
            alert('Request Token oder Element-Id wurden nicht initialisiert.');
            return;
        }
        return this;
    },

    showInfoBox: function (student, col) {
        var self = this;
        var studentId = student;
        var skill = col;
        this.destroyInfoBox();
        var request_id = Math.round(Math.random() * 100000000000);
        this.request_id = request_id;
        var fire = (function () {
            self.fireRequest(request_id, studentId, skill);
        }.delay(600));
    },

    destroyInfoBox: function () {

        if (document.id('InfoBox')) {
            document.id('InfoBox').destroy();
        }
        this.request_id = null;
    },

    fireRequest: function (requestId, studentId, skillId) {

        var self = this;
        //alert(requestId + ' ' + studentId + ' ' + skillId + ' ' + self.request_token);

        var req = new Request({
            url: 'ajax.php?action=fmd&id=' + self.element_id + '&act=tally_sheet',
            method: 'post',
            data: {
                studentId: studentId,
                skillId: skillId,
                REQUEST_TOKEN: self.request_token
            },
            onComplete: function (response) {
                if (response) {
                    var json = JSON.decode(response);
                    if (self.request_id){
                        if (requestId.toInt() == self.request_id.toInt()) {
                            self.appearInfoBox(json, requestId);
                        }
                    }
                }
            }
        });
        if (requestId == this.request_id) {
            req.send();
        }
    },



    appearInfoBox: function (json, requestId) {
        var self = this;
        var AjaxDiv = new Element('div');
        AjaxDiv.setProperty('id', 'InfoBox');
        AjaxDiv.setStyle('opacity', 0);
        var wrapper = document.id('wrapper');
        AjaxDiv.inject(wrapper, 'top');


        AjaxDiv.innerHTML = json.html;
        if (requestId === self.request_id) {
            document.id('InfoBox').fade(0.8);
        }

    }
});

