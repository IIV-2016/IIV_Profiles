$(document).ready(function(){
    var nav = $('.menuWrap');
    $(window).scroll(function () {
        if ($(this).scrollTop() > 0) {
            nav.addClass("float-menu");
        }else {
            nav.removeClass("float-menu");
        }
    });
});