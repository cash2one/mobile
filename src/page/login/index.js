/**
 * @file login
 * @author lijun
 */
define(function (require, exports) {

    'use strict';

    var $ = require('zepto');

    return function () {
        var container = $('.form');
        var userName = container.find('.user-name');
        var password = container.find('.password');
        var submit = container.find('.submit');

        submit.on(
            'click',
            function () {
                $.ajax(
                    {
                        url: '/login/submit',
                        data: {
                            userName: userName.val(),
                            password: password.val()
                        },
                        type: 'post'
                    }
                ).always(function (response) {

                    response = response || {};

                    var data = response.data || {};
                    if (response.state == 0) {
                        location.href = '/loginSuccess';
                    }
                    else {
                        require(
                            ['common/ui/Dialog/Dialog'],
                            function (Dialog) {
                            var dialog = new Dialog(
                                {
                                    content: 'test1'
                                }
                            );

                            dialog.show();
                        });
                    }
                });
            }
        );
    }
});
