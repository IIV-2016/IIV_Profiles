$(document).ready(function(){
    var nav = $('.menuWrap');
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            nav.addClass("float-menu");
        }else {
            nav.removeClass("float-menu");
        }
    });
});