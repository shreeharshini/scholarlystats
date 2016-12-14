!function(t){"use strict";t.fn.lightspeedBox=function(i){function e(t){"undefined"!=typeof t&&(t.stopPropagation(),s(!1)),z.images.length>1?a(z.nextImage()):o()}function s(t){t?(y.slideshow=!0,b.hide(),x.show(),window.setTimeout(n,y.playbackTiming)):(y.slideshow=!1,b.show(),x.hide())}function l(){I=!1,v.text(""),c.addClass("lsb-active")}function o(){c.removeClass("lsb-active"),r.removeClass("lsb-image-loaded"),r.addClass("lsb-noimage"),I=!0}function n(){y.slideshow&&e(),y.slideshow&&!I&&window.setTimeout(n,y.playbackTiming)}function a(t){r.addClass("lsb-noimage"),r.removeClass("lsb-image-loaded"),w.addClass("lsb-image-notitle"),u.hide(),window.setTimeout(function(){h(t)},M)}function h(i){d.show(),y.showImageCount&&z.images.length>1?v.text(z.current+1+"/"+z.images.length):v.text("");var e=t("<img />").attr("src",i.href).on("load",function(){r.attr("src",e.attr("src")),y.showImageTitle&&w.text(i.alt),q.attr("href",i.href),g()}).on("error",function(t){d.hide(),w.text(i.alt),u.show(),console.log("[LSB Error]:",t)})}function g(){d.hide(),r.removeClass("lsb-noimage"),r.addClass("lsb-image-loaded"),w.removeClass("lsb-image-notitle")}var c,d,r,w,v,u,p,f,m,q,b,x,B={showImageTitle:!0,showImageCount:!0,showDownloadButton:!0,showPlayButton:!0,slideshow:!1,playbackTiming:3500,zIndex:30,locale:{nextButton:"Next image",prevButton:"Previous image",closeButton:"Close",downloadButton:"Download image",noImageFound:"Sorry, no image found.",playButton:"Play slideshow",pauseButton:"Stop slideshow"}},y=t.extend(B,i),M=400,I=!0,z={current:null,images:[],getImagesInSet:function(i){var e,s=[],l=0,o=i.attr("href"),n=i.find("img").attr("alt"),a=i.attr("data-lsb-group");a?(e=t('.lsb-preview[data-lsb-group="'+a+'"]'),e.each(function(i,e){var n=e.getAttribute("href"),a=t(e).find("img").attr("alt");s.push({href:n,alt:a}),n===o&&(l=i)})):s.push({href:o,alt:n}),this.images=s,this.current=l,1===this.images.length?(f.css("visibility","hidden"),p.css("visibility","hidden"),b.hide()):(f.css("visibility","visible"),p.css("visibility","visible"),y.showPlayButton&&b.show())},nextImage:function(){return 0===this.images.length?"":(this.current+=1,this.current>this.images.length-1&&(this.current=0),this.images[this.current])},previousImage:function(){return 0===this.images.length?"":(this.current-=1,this.current<0&&(this.current=this.images.length-1),this.images[this.current])},canSwitch:function(){return this.images.length>1}};!function(){for(var i="",h=0;h<12;h++)i+='<div class="waitingicon-circle"></div>';t("body").append('<div class="lightspeed-box"><div class="lsb-content"><header class="lsb-header"><div class="lsb-image-count"></div><div class="lsb-image-title"></div></header><div class="lsb-control-panel"><a class="lsb-control lsb-panel-button lsb-play" title="Slideshow"><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1408 1792"><path fill="#000" d="M1384 927l-1328 738q-23 13-39.5 3t-16.5-36v-1472q0-26 16.5-36t39.5 3l1328 738q23 13 23 31t-23 31z" /></svg><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1408 1792"><path fill="#fff" d="M1384 927l-1328 738q-23 13-39.5 3t-16.5-36v-1472q0-26 16.5-36t39.5 3l1328 738q23 13 23 31t-23 31z" /></svg></a><a class="lsb-control lsb-panel-button lsb-pause" title="Stop Slideshow"><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1536 1792"><path fill="#000" d="M1536 192v1408q0 26-19 45t-45 19h-512q-26 0-45-19t-19-45v-1408q0-26 19-45t45-19h512q26 0 45 19t19 45zM640 192v1408q0 26-19 45t-45 19h-512q-26 0-45-19t-19-45v-1408q0-26 19-45t45-19h512q26 0 45 19t19 45z" /></svg><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1536 1792"><path fill="#fff" d="M1536 192v1408q0 26-19 45t-45 19h-512q-26 0-45-19t-19-45v-1408q0-26 19-45t45-19h512q26 0 45 19t19 45zM640 192v1408q0 26-19 45t-45 19h-512q-26 0-45-19t-19-45v-1408q0-26 19-45t45-19h512q26 0 45 19t19 45z" /></svg></a><a class="lsb-control lsb-panel-button lsb-download" download title="Download Image"><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1664 1792"><path fill="#000" d="M1280 1344q0-26-19-45t-45-19-45 19-19 45 19 45 45 19 45-19 19-45zM1536 1344q0-26-19-45t-45-19-45 19-19 45 19 45 45 19 45-19 19-45zM1664 1120v320q0 40-28 68t-68 28h-1472q-40 0-68-28t-28-68v-320q0-40 28-68t68-28h465l135 136q58 56 136 56t136-56l136-136h464q40 0 68 28t28 68zM1339 551q17 41-14 70l-448 448q-18 19-45 19t-45-19l-448-448q-31-29-14-70 17-39 59-39h256v-448q0-26 19-45t45-19h256q26 0 45 19t19 45v448h256q42 0 59 39z" /></svg><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1664 1792"><path fill="#fff" d="M1280 1344q0-26-19-45t-45-19-45 19-19 45 19 45 45 19 45-19 19-45zM1536 1344q0-26-19-45t-45-19-45 19-19 45 19 45 45 19 45-19 19-45zM1664 1120v320q0 40-28 68t-68 28h-1472q-40 0-68-28t-28-68v-320q0-40 28-68t68-28h465l135 136q58 56 136 56t136-56l136-136h464q40 0 68 28t28 68zM1339 551q17 41-14 70l-448 448q-18 19-45 19t-45-19l-448-448q-31-29-14-70 17-39 59-39h256v-448q0-26 19-45t45-19h256q26 0 45 19t19 45v448h256q42 0 59 39z" /></svg></a></div><div class="lsb-image-container"><div class="lsb-no-image-found"><div class="no-found-msg">Sorry, no image found.</div></div><img class="lsb-image lsb-noimage"></div><div class="waitingicon">'+i+'</div><div class="lsb-control lsb-close"><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1408 1792"><path fill="#000" d="M1298 1322q0 40-28 68l-136 136q-28 28-68 28t-68-28l-294-294-294 294q-28 28-68 28t-68-28l-136-136q-28-28-28-68t28-68l294-294-294-294q-28-28-28-68t28-68l136-136q28-28 68-28t68 28l294 294 294-294q28-28 68-28t68 28l136 136q28 28 28 68t-28 68l-294 294 294 294q28 28 28 68z" /></svg><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 1408 1792"><path fill="#fff" d="M1298 1322q0 40-28 68l-136 136q-28 28-68 28t-68-28l-294-294-294 294q-28 28-68 28t-68-28l-136-136q-28-28-28-68t28-68l294-294-294-294q-28-28-28-68t28-68l136-136q28-28 68-28t68 28l294 294 294-294q28-28 68-28t68 28l136 136q28 28 28 68t-28 68l-294 294 294 294q28 28 28 68z" /></svg></div><div class="lsb-control lsb-prev" title="Previous Image"><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 640 1792"><path fill="#000" d="M627 544q0 13-10 23l-393 393 393 393q10 10 10 23t-10 23l-50 50q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l50 50q10 10 10 23z" /></svg><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 640 1792"><path fill="#fff" d="M627 544q0 13-10 23l-393 393 393 393q10 10 10 23t-10 23l-50 50q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l50 50q10 10 10 23z" /></svg></div><div class="lsb-control lsb-next" title="Next Image"><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 640 1792"><path fill="#000" d="M595 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z" /></svg><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 640 1792"><path fill="#fff" d="M595 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z" /></svg></div></div></div>'),c=t(".lightspeed-box"),c.css("z-index",y.zIndex),d=t(".waitingicon"),r=c.find(".lsb-image"),w=c.find(".lsb-image-title"),v=c.find(".lsb-image-count"),u=c.find(".lsb-no-image-found"),p=c.find(".lsb-next"),f=c.find(".lsb-prev"),m=c.find(".lsb-close"),q=c.find(".lsb-download"),b=c.find(".lsb-play"),x=c.find(".lsb-pause"),y.showDownloadButton||q.hide(),y.showPlayButton&&b.hide(),x.hide(),p.attr("title",y.locale.nextButton),f.attr("title",y.locale.prevButton),m.attr("title",y.locale.closeButton),q.attr("title",y.locale.downloadButton),b.attr("title",y.locale.playButton),x.attr("title",y.locale.pauseButton),u.find(".no-found-msg").text(y.locale.noImageFound);var g={x:0,y:0},B=20;t(".lsb-preview").mousedown(function(t){g.x=t.clientX,g.y=t.clientY}),t(".lsb-preview").mouseup(function(i){Math.abs(g.x-i.clientX)<B&&Math.abs(g.y-i.clientY)<B&&(z.getImagesInSet(t(this)),l(),a(z.images[z.current]),y.slideshow&&window.setTimeout(n,y.playbackTiming))}),t(".lsb-preview").click(function(t){t.preventDefault()}),c.swipeDetector().on("swipeLeft.lsb swipeRight.lsb",function(t){z.images.length>1&&("swipeLeft"===t.type?a(z.nextImage()):"swipeRight"===t.type&&a(z.previousImage()))}),t(document).on("keyup.lightspeed-box",function(t){c.hasClass("lsb-active")&&(39===t.which&&z.images.length>1?(t.stopPropagation(),a(z.nextImage())):37===t.which&&z.images.length>1?(t.stopPropagation(),a(z.previousImage())):27===t.which&&o())}),p.click(function(t){t.stopPropagation(),y.slideshow=!1,a(z.nextImage())}),f.click(function(t){t.stopPropagation(),y.slideshow=!1,a(z.previousImage())}),b.click(function(t){t.stopPropagation(),s(!0)}),x.click(function(t){t.stopPropagation(),s(!1)}),q.click(function(t){t.stopPropagation()}),u.click(e),r.click(e),c.click(function(){s(!1),o()}),w.click(function(t){t.stopPropagation()})}()},t.fn.swipeDetector=function(i){function e(t){i.useOnlyTouch&&!t.originalEvent.touches||(t.originalEvent.touches&&(t=t.originalEvent.touches[0]),0===o&&(o=1,n=t.clientX,a=t.clientY))}function s(){2===o&&(o=0,Math.abs(h)>Math.abs(g)&&Math.abs(h)>i.swipeThreshold?h<0?c.trigger(t.Event("swipeLeft.lsb")):c.trigger(t.Event("swipeRight.lsb")):Math.abs(g)>i.swipeThreshold&&(g<0?c.trigger(t.Event("swipeUp.lsb")):c.trigger(t.Event("swipeDown.lsb"))))}function l(t){if(1===o){t.originalEvent.touches&&(t=t.originalEvent.touches[0]);var e=t.clientX-n,s=t.clientY-a;(Math.abs(e)>i.swipeThreshold||Math.abs(s)>i.swipeThreshold)&&(o=2,h=e,g=s)}}var o=0,n=0,a=0,h=0,g=0,c=this,d={swipeThreshold:70,useOnlyTouch:!0};return function(){i=t.extend(d,i),c.on("mousedown touchstart",e),t("html").on("mouseup touchend",s),t("html").on("mousemove touchmove",l)}(),c}}(jQuery);