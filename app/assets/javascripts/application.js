// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap-sprockets
$(document).ready(function(){
    
    var historiaLink = document.getElementById("historia-link");
    var nossaHistoria = document.getElementsByClassName("nossa-historia");
    
    historiaLink.addEventListener('click', (event) => {
        nossaHistoria[0].classList.toggle('nossa-historia-active');
    })
    showAlert(); 
 });
 
 function showAlert(){
     $(".fade").addClass("out")
     setTimeout(function(){ $(".fade").addClass("kill") }, 5000);
}
