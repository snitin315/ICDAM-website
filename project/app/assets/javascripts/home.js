$(document).ready(function(){
  $('.carousel').carousel();
  var reset = $('#reset')
  reset.click(function(){
    location.reload();
  })
})
