$(document).ready(function() {
  var dads = $(".dad a");
  var info = $(".dad a .info")
  info.animate({ opacity: 0}, 0.01);
  dads.hover(function() {
   $(this).children(".info").stop().animate({ opacity: 0.9 });
  }, function() {
   $(this).children(".info").stop().animate({ opacity: 0});
  });
});