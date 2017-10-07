$(document).ready(function(){

if (document.getElementById("special_submission_submit") !=null){
  document.getElementById("special_submission_submit").addEventListener('click',function(){
   this.innerHTML="please wait";
  });
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
