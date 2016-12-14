+function(t){"use strict";function e(e){return this.each(function(){var r=t(this),i=t.extend({},a.DEFAULTS,r.data(),"object"==typeof e&&e),o=r.data("bs.validator");(o||"destroy"!=e)&&(o||r.data("bs.validator",o=new a(this,i)),"string"==typeof e&&o[e]())})}var a=function(e,r){this.$element=t(e),this.options=r,r.errors=t.extend({},a.DEFAULTS.errors,r.errors);for(var i in r.custom)if(!r.errors[i])throw new Error("Missing default error message for custom validator: "+i);t.extend(a.VALIDATORS,r.custom),this.$element.attr("novalidate",!0),this.toggleSubmit(),this.$element.on("input.bs.validator change.bs.validator focusout.bs.validator",t.proxy(this.validateInput,this)),this.$element.on("submit.bs.validator",t.proxy(this.onSubmit,this)),this.$element.find("[data-match]").each(function(){var e=t(this),a=e.data("match");t(a).on("input.bs.validator",function(){e.val()&&e.trigger("input.bs.validator")})})};a.INPUT_SELECTOR=':input:not([type="submit"], button):enabled:visible',a.DEFAULTS={delay:500,html:!1,disable:!0,custom:{},errors:{match:"Does not match",minlength:"Not long enough"},feedback:{success:"glyphicon-ok",error:"glyphicon-remove"}},a.VALIDATORS={"native":function(t){var e=t[0];return!e.checkValidity||e.checkValidity()},match:function(e){var a=e.data("match");return!e.val()||e.val()===t(a).val()},minlength:function(t){var e=t.data("minlength");return!t.val()||t.val().length>=e}},a.prototype.validateInput=function(e){var a=t(e.target),r=a.data("bs.validator.errors");if(a.is('[type="radio"]')&&(a=this.$element.find('input[name="'+a.attr("name")+'"]')),this.$element.trigger(e=t.Event("validate.bs.validator",{relatedTarget:a[0]})),!e.isDefaultPrevented()){var i=this;this.runValidators(a).done(function(o){a.data("bs.validator.errors",o),o.length?i.showErrors(a):i.clearErrors(a),r&&o.toString()===r.toString()||(e=o.length?t.Event("invalid.bs.validator",{relatedTarget:a[0],detail:o}):t.Event("valid.bs.validator",{relatedTarget:a[0],detail:r}),i.$element.trigger(e)),i.toggleSubmit(),i.$element.trigger(t.Event("validated.bs.validator",{relatedTarget:a[0]}))})}},a.prototype.runValidators=function(e){function r(t){return e.data(t+"-error")||e.data("error")||"native"==t&&e[0].validationMessage||n.errors[t]}var i=[],o=t.Deferred(),n=this.options;return e.data("bs.validator.deferred")&&e.data("bs.validator.deferred").reject(),e.data("bs.validator.deferred",o),t.each(a.VALIDATORS,t.proxy(function(t,a){if((e.data(t)||"native"==t)&&!a.call(this,e)){var o=r(t);!~i.indexOf(o)&&i.push(o)}},this)),!i.length&&e.val()&&e.data("remote")?this.defer(e,function(){var a={};a[e.attr("name")]=e.val(),t.get(e.data("remote"),a).fail(function(t,e,a){i.push(r("remote")||a)}).always(function(){o.resolve(i)})}):o.resolve(i),o.promise()},a.prototype.validate=function(){var t=this.options.delay;return this.options.delay=0,this.$element.find(a.INPUT_SELECTOR).trigger("input.bs.validator"),this.options.delay=t,this},a.prototype.showErrors=function(e){var a=this.options.html?"html":"text";this.defer(e,function(){var r=e.closest(".form-group"),i=r.find(".help-block.with-errors"),o=r.find(".form-control-feedback"),n=e.data("bs.validator.errors");n.length&&(n=t("<ul/>").addClass("list-unstyled").append(t.map(n,function(e){return t("<li/>")[a](e)})),void 0===i.data("bs.validator.originalContent")&&i.data("bs.validator.originalContent",i.html()),i.empty().append(n),r.addClass("has-error"),o.length&&o.removeClass(this.options.feedback.success)&&o.addClass(this.options.feedback.error)&&r.removeClass("has-success"))})},a.prototype.clearErrors=function(t){var e=t.closest(".form-group"),a=e.find(".help-block.with-errors"),r=e.find(".form-control-feedback");a.html(a.data("bs.validator.originalContent")),e.removeClass("has-error"),r.length&&r.removeClass(this.options.feedback.error)&&r.addClass(this.options.feedback.success)&&e.addClass("has-success")},a.prototype.hasErrors=function(){function e(){return!!(t(this).data("bs.validator.errors")||[]).length}return!!this.$element.find(a.INPUT_SELECTOR).filter(e).length},a.prototype.isIncomplete=function(){function e(){return"checkbox"===this.type?!this.checked:"radio"===this.type?!t('[name="'+this.name+'"]:checked').length:""===t.trim(this.value)}return!!this.$element.find(a.INPUT_SELECTOR).filter("[required]").filter(e).length},a.prototype.onSubmit=function(t){this.validate(),(this.isIncomplete()||this.hasErrors())&&t.preventDefault()},a.prototype.toggleSubmit=function(){if(this.options.disable){var e=t('button[type="submit"], input[type="submit"]').filter('[form="'+this.$element.attr("id")+'"]').add(this.$element.find('input[type="submit"], button[type="submit"]'));e.toggleClass("disabled",this.isIncomplete()||this.hasErrors())}},a.prototype.defer=function(e,a){return a=t.proxy(a,this),this.options.delay?(window.clearTimeout(e.data("bs.validator.timeout")),void e.data("bs.validator.timeout",window.setTimeout(a,this.options.delay))):a()},a.prototype.destroy=function(){return this.$element.removeAttr("novalidate").removeData("bs.validator").off(".bs.validator"),this.$element.find(a.INPUT_SELECTOR).off(".bs.validator").removeData(["bs.validator.errors","bs.validator.deferred"]).each(function(){var e=t(this),a=e.data("bs.validator.timeout");window.clearTimeout(a)&&e.removeData("bs.validator.timeout")}),this.$element.find(".help-block.with-errors").each(function(){var e=t(this),a=e.data("bs.validator.originalContent");e.removeData("bs.validator.originalContent").html(a)}),this.$element.find('input[type="submit"], button[type="submit"]').removeClass("disabled"),this.$element.find(".has-error").removeClass("has-error"),this};var r=t.fn.validator;t.fn.validator=e,t.fn.validator.Constructor=a,t.fn.validator.noConflict=function(){return t.fn.validator=r,this},t(window).on("load",function(){t('form[data-toggle="validator"]').each(function(){var a=t(this);e.call(a,a.data())})})}(jQuery);