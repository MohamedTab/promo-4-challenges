/*
  *
  * TODO: add your code here!
  *
*/
$(function() {
  // executed when the document is ready!
  $('#message').slideDown("slow");
});

$(function() {
  $("#message").click(function(){
  $(this).slideUp("slow");
  });
});