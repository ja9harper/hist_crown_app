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




  
//THE FUNCTIONS  
  
$(document).ready(function(){
    console.log("hi");
    L.mapbox.accessToken = 'pk.eyJ1IjoiamE5aGFycGVyIiwiYSI6IlVUaXBLXzgifQ.tC2ktomTqN0uz0h3yu23FA';
        var map = L.mapbox.map('map', 'ja9harper.k2i6pfn9').setView([40.664839, -73.942855], 14);

            map.touchZoom.disable();
            map.doubleClickZoom.disable();
            map.scrollWheelZoom.disable();

        if (map.tap) map.tap.disable();


        var geoJson =  [{
            type:'Feature', 
            geometry: {
                type:'Point', 
                coordinates: [-73.944486, 40.674642]
            }, 
            properties: {
            title: "Brooklyn Children's Museum",
            description: "145 Brooklyn Avenue. Built in 1899, this bright yellow building is popular amongst the under 5 set. ",
            'marker-size': 'small',
            'marker-color': '#BE9A6B',
            }
        },

        {
            type: 'Feature',
            geometry: {
                type: 'Point',
                coordinates: [-73.946524, 40.677785]
            },
            properties: {
                title: "Susan B Elkins Home",
                description: "1375 Pacific Street. The oldest home in Crown Heights construction finished in 1894.",
                'marker-size': 'small',
                'marker-color': '#BE9A6B',
            }
        },

        {
            type: 'Feature',
            geometry: {
                type: 'Point',
                coordinates: [-73.94471, 40.672228]
            },
            properties: {
                title: "Saint Gregory's Catholic Church",
                description: "224 Brooklyn Avenue. This Catholic Church has been serving the Catholic Community of Crown Heights since 1905.",
                'marker-size': 'small',
                'marker-color': '#BE9A6B',
            }
        },
        
        {
            type: 'Feature',
            geometry: {
                type: 'Point',
                coordinates: [-73.942855, 40.669439]
            },
            properties: {
                title: "Chabad-Lubavitch Hasidic Movement HQ",
                description: "770 Eastern Parkway.",
                'marker-size': 'small',
                'marker-color': '#BE9A6B',
            }
        },
        
        {
            type: 'Feature',
            geometry: {
                type: 'Point',
                coordinates: [-73.95187, 40.677785]
            },
            properties: {
                title: "Imperial Apartments",
                description: "1198 Pacific Street",
                'marker-size': 'small',
                'marker-color': '#BE9A6B',
            }
        },

        {
            type: 'Feature',
            geometry: {
                type: 'Point',
                coordinates: [-73.94948959350586, 40.66976709185003]
            },
            properties: {
                title: "Labor Day Parade",
                description: "Crown Heights is a popular rest stop for revelers at this annual event",
                'marker-size': 'small',
                'marker-color': '#BE9A6B',
            }
        }


        ];
        var myLayer = L.mapbox.featureLayer().addTo(map);
        myLayer.setGeoJSON(geoJson);

        myLayer.on('click', function(e) {
            var place = e.layer.feature.properties.title;
            $.get('/places/' + place, function() {
                console.log("place sent");
            })
        });

});



