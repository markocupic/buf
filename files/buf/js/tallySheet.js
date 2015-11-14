(function() {
    /** Frontend class provides several methods for the frontend usage **/
    TallySheet = new Class({
        request_token: null,

        request_id: null,

        initialize: function (options) {
            this.options = options;
            this.request_token = options.request_token;

            if (!this.request_token) {
                alert('Request Token wurde nicht initialisiert.');
                return;
            }
            return this;
        },

        showInfoBox: function (elCell, student, col) {
            var self = this;
            elCell.addEvent('mouseleave', function (event) {
                event.stopPropagation();
                self.destroyInfoBox();
            });

            // vars
            var studentId = student;
            var skill = col;

            // destroy the info box, if there is
            this.destroyInfoBox();

            // create redquest id
            var request_id = Math.round(Math.random() * 100000000000);
            this.request_id = request_id;

            // fire request after a short delay
            var fire = (function () {
                self.fireRequest(request_id, studentId, skill);
            }.delay(400));
        },

        destroyInfoBox: function () {

            this.request_id = null;
            if (document.id('InfoBox')) {
                document.id('InfoBox').fade('out');
                var destroy = (function () {
                    if (document.id('InfoBox')) {
                        document.id('InfoBox').destroy();
                    }
                }.delay(500));
            }
        },

        fireRequest: function (requestId, studentId, skillId) {

            var self = this;
            var req = new Request({
                url: '?isAjax=true&act=tally_sheet',
                method: 'post',
                data: {
                    studentId: studentId,
                    skillId: skillId,
                    REQUEST_TOKEN: self.request_token
                },

                onComplete: function (response) {
                    if (response) {
                        var json = JSON.decode(response);
                        if (self.request_id && json) {
                            if (json.status == 'success' && requestId.toInt() == self.request_id.toInt()) {
                                self.appearInfoBox(json, requestId);
                            }
                        }
                    }
                    self.destroyRequestStatusInfo(requestId);
                },

                onLoadstart: function (event, xhr) {
                    if (document.id('requestStatus')) {
                        var elDiv = new Element('div',
                            {
                                id: requestId,
                                'class': 'requestInfoCell'
                            });
                        elDiv.innerHTML = 'requesting...';
                        elDiv.setStyle('color', 'gray');
                        elDiv.inject(document.id('requestStatus'), 'top');
                    }
                },
                onTimeout: function () {
                    self.destroyRequestStatusInfo(requestId);
                    alert('Request fehlgeschlagen. Internet-Verbindung überprüfen!');
                },
                onFailure: function () {
                    self.destroyRequestStatusInfo(requestId);
                },
                onException: function () {
                    self.destroyRequestStatusInfo(requestId);
                },
                onCancel: function () {
                    self.destroyRequestStatusInfo(requestId);
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
            this.destroyRequestStatusInfo(requestId);
        },

        destroyRequestStatusInfo: function (requestId) {
            var destroyRequestStatusInfo = (function () {
                if (document.id(requestId.toString())) {
                    document.id(requestId.toString()).destroy();
                }
            }.delay(1000));
        }
    });
})(document.id);

