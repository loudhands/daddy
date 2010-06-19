$(document).ready(function() {
  var dads = $(".dad a");
  var info = $(".dad a .info")
  info.animate({ opacity: 0}, 0.01);
  dads.hover(function() {
   $(this).children(".info").stop().animate({ opacity: 0.9 });
  }, function() {
   $(this).children(".info").stop().animate({ opacity: 0});
  });
  
  var options = {  
    'maxCharacterSize': 140,  
    'textFontSize': '12px',  
    'textColor': '#111',  
    'textFamily': 'Verdana, sans-serif',  
    'textAlign': 'right',  
    'warningColor': '#CC3300',    
    'warningNumber': 10,  
    'isCharacterCount': true,  
    'isWordCount': false  
  };  
  $('#textCount').textareaCount(options);
  
});