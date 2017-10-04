$(document).ready(function(){
  console.log("something");
  console.log("something");
  console.log("something");
  // console.log(document.getElementById("special_submission_submit"));
if (document.getElementById("special_submission_submit") !=null){
  document.getElementById("special_submission_submit").addEventListener('click',function(){
    console.log("inside event listener");
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
    console.log("inside event listener");
  //  console.log(this);
   this.innerHTML="Please Wait";


 });
}









})
