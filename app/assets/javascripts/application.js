// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require bootstrap-sprockets
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
//= require chosen-jquery
/*global $*/
$(function() {
    $("div#faktury").hide();
    $("button#faktury").click(function(event) {
        event.preventDefault();
        $("div#faktury").toggle(1000);
    });
});

$(function() {
    $("div#obroty").hide();
    $("button#obroty").click(function(event) {
        event.preventDefault();
        $("div#obroty").toggle(1000);
    });
});

$(function() {
    $("div#osoby").hide();
    $("button#osoby").click(function(event) {
        event.preventDefault();
        $("div#osoby").toggle(1000);
    });
});

$(function() {
    $("div#dodatkowe").hide();
    $("button#dodatkowe").click(function(event) {
        event.preventDefault();
        $("div#dodatkowe").toggle(1000);
    });
});
$(function() {
    $("div#odmowa").hide();
    $("button#odmowa").click(function(event) {
        event.preventDefault();
        $("div#odmowa").toggle(1000);
    });
});



