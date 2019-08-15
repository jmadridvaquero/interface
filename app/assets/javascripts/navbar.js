$(document).scroll(function () {
    var y = $(this).scrollTop();
    if (y > 650) {
        $('.secondary_navbar-coop').fadeIn();
    } else {
        $('.secondary_navbar-coop').fadeOut();
    }

});