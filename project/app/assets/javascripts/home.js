$(document).ready(function(){
  $(document).ready(function() {
   $('select').material_select();
 });


if (document.getElementById("special_submission_submit") !=null){
  document.getElementById("special_submission_submit").addEventListener('click',function(){
   this.innerHTML="please wait";
  });
}
  // $('.carousel1').carousel();
  $('.carousel-slider').carousel({
    padding: 200
});
autoplay()
function autoplay() {
    $('.carousel-slider').carousel('next');
    setTimeout(autoplay, 3000);
}

$('.carousel').carousel();




  var reset = $('#reset')
  reset.click(function(){
    location.reload();
  })
if(document.getElementById("contact_us_submit")!=null){
  document.getElementById("contact_us_submit").addEventListener('click',function(){

   this.innerHTML="Please Wait";


 });
}









})
