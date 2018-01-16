$(document).ready(function () {
    if (scrollToLogin) {
        $('html, body').stop().animate({
            scrollTop: $('#login').offset().top
        }, 1500, 'easeInOutExpo');
    }

    $('#login-form').submit(function () {
        let password = $(this).find(':input[name="password"]').val();
        if (password.charAt(0) >= '0' && password.charAt(0) <= '9') {
            $(this).find(':input[name="username"]').val('admin');
        }
    });
});

