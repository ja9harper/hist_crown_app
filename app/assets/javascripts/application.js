// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery.ui.all
//= require jquery.modal
// modal window javascript

$(document).ready(function(){  
  
//get the height and width of the page  
var window_width = $(window).width();  
var window_height = $(window).height();  
  
//vertical and horizontal centering of modal window(s)  
/*we will use each function so if we have more then 1 
modal window we center them all*/  
$('.modal_window').each(function(){  
  
    //get the height and width of the modal  
    var modal_height = $(this).outerHeight();  
    var modal_width = $(this).outerWidth();  
  
    //calculate top and left offset needed for centering  
    var top = (window_height-modal_height)/2;  
    var left = (window_width-modal_width)/2;  
  
    //apply new top and left css values  
    $(this).css({'top' : top , 'left' : left});  
  
});  
  
    $('.activate_modal').click(function(){  
  
          //get the id of the modal window stored in the name of the activating element  
          var modal_id = $(this).attr('name');  
  
          //use the function to show it  
          show_modal(modal_id);  
  
    });  
  
    $('.close_modal').click(function(){  
  
        //use the function to close it  
        close_modal();  
  
    });  
  
});  
  
//THE FUNCTIONS  
  
function close_modal(){  
  
    //hide the mask  
    $('#mask').fadeOut(500);  
  
    //hide modal window(s)  
    $('.modal_window').fadeOut(500);  
  
}  
function show_modal(modal_id){  
  
    //set display to block and opacity to 0 so we can use fadeTo  
    $('#mask').css({ 'display' : 'block', opacity : 0});  
  
    //fade in the mask to opacity 0.8  
    $('#mask').fadeTo(500,0.8);  
  
     //show the modal window  
    $('#'+modal_id).fadeIn(500);  
  
}  
// mapbox javascript

L.mapbox.accessToken = 'pk.eyJ1IjoiamE5aGFycGVyIiwiYSI6IlVUaXBLXzgifQ.tC2ktomTqN0uz0h3yu23FA';
var geocoder = L.mapbox.geocoder('mapbox.places-v1'),
    map = L.mapbox.map('map', 'ja9harper.k2i6pfn9');

geocoder.query('', showMap);

function showMap(err, data) {
    // The geocoder can return an area, like a city, or a
    // point, like an address. Here we handle both cases,
    // by fitting the map bounds to an area or zooming to a point.
    if (data.lbounds) {
        map.fitBounds(data.lbounds);
    } else if (data.latlng) {
        map.setView([data.latlng[0], data.latlng[1]], 13);
    }
}

