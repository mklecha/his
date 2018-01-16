$(document).ready(function () {
    if (scrollToLogin) {
        $('html, body').stop().animate({
            scrollTop: $('#login').offset().top
        }, 1500, 'easeInOutExpo');
    }
});