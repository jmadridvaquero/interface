function scrollHandler() {
  var y = $(window).scrollTop();
  var $navBar = $('.secondary_navbar-coop');

  if (y > 650) {
    if (!$navBar.is(':visible')) {
      $navBar.css({opacity: 0, display: 'flex'}).animate({opacity: 1}, 400);
    }
  } else {
    $navBar.fadeOut();
  }
}

$(function() {
  $(document).scroll(scrollHandler);
  // scrollHandler will be called when the dom is ready
  scrollHandler();
});
