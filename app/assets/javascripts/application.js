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

$(document).ready(function () {
    var yOff = 15;
    var xOff = -20;
    var pathToImage = "/assets/images/bkkids.jpg";

$("#map:nth-child(2)").hover(function (e) {
        $("body").append("<p id='bkkids.jpg'><img src='" + pathToImage + "'/></p>");
        $("bkkids.jpg")
            .css("position", "absolute")
            .css("top", (e.pageY - yOff) + "px")
            .css("left", (e.pageX + xOff) + "px")
            .fadeIn("fast");
    },

    function () {
        $("bkkids.jpg").remove();
    });

    $("#map:nth-child(2)").mousemove(function (e) {
        $("bkkids.jpg")
            .css("top", (e.pageY - yOff) + "px")
            .css("left", (e.pageX + xOff) + "px");
    });
});
$("#map:nth-child(3)").hover(function (e) {
        $("body").append("<p id='bkkids.jpg'><img src='" + pathToImage + "'/></p>");
        $("bkkids.jpg")
            .css("position", "absolute")
            .css("top", (e.pageY - yOff) + "px")
            .css("left", (e.pageX + xOff) + "px")
            .fadeIn("fast");
    },

    function () {
        $("bkkids.jpg").remove();
    });

    $("#map:nth-child(3)").mousemove(function (e) {
        $("bkkids.jpg")
            .css("top", (e.pageY - yOff) + "px")
            .css("left", (e.pageX + xOff) + "px");
    });
});

  
//THE FUNCTIONS  
  
$(document).ready(function(){

  $(document).bind('ajaxError', 'form#new_person', function(event, jqxhr, settings, exception){

    // note: jqxhr.responseJSON undefined, parsing responseText instead
    $(event.data).render_form_errors( $.parseJSON(jqxhr.responseText) );

  });

});

(function($) {

  $.fn.modal_success = function(){
    // close modal
    this.modal('hide');

    // clear form input elements
    // todo/note: handle textarea, select, etc
    this.find('form input[type="text"]').val('');

    // clear error state
    this.clear_previous_errors();
  };

  $.fn.render_form_errors = function(errors){

    $form = this;
    this.clear_previous_errors();
    model = this.data('model');

    // show error messages in input form-group help-block
    $.each(errors, function(field, messages){
      $input = $('input[name="' + model + '[' + field + ']"]');
      $input.closest('.form-group').addClass('has-error').find('.help-block').html( messages.join(' & ') );
    });

  };

  $.fn.clear_previous_errors = function(){
    $('.form-group.has-error', this).each(function(){
      $('.help-block', $(this)).html('');
      $(this).removeClass('has-error');
    });
  }

}(jQuery));
}  
// mapbox javascript

L.mapbox.accessToken = 1pk.eyJ1IjoiamE5aGFycGVyIiwiYSI6IlVUaXBLXzgifQ.tC2ktomTqN0uz0h3yu23FA;

var geocoder = L.mapbox.geocoder('mapbox.places-v1'),
map = L.mapbox.map('map', 'ja9harper.k2i6pfn9');

map.setView([40.664839, -73.942855], 14);


// map.dragging.disable();
map.touchZoom.disable();
map.doubleClickZoom.disable();
map.scrollWheelZoom.disable();

if (map.tap) map.tap.disable();

  

function showMap(err, data) {
    if (data.lbounds) {
        map.fitBounds(data.lbounds);
    } else if (data.latlng) {
        map.setView([data.latlng[0], data.latlng[1]], 13);
    }


}


