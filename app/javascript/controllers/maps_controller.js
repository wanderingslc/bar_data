import {Controller} from 'stimulus'
import * as url from "url";

export default class extends Controller{
    static targets = ['map']

    connect() {
        console.log('connected')
       if (typeof(google) !== "undefined") {
           this.initMap();
       }
    }

    initMap() {
        console.log('initied');
        const latLng = this.getLatLng();
        this.map = new google.maps.Map(this.mapTarget, {
            center: new google.maps.LatLng(latLng[0], latLng[1]),
            zoom: 14,
            options: {
                styles: [
                    {
                        featureType: "poi.business",
                        stylers: [{ visibility: "off" }],
                    },
                    {
                        featureType: "transit",
                        elementType: "labels.icon",
                        stylers: [{ visibility: "off" }],
                    },
                ],

            },

        })
        const places = document.querySelectorAll("li.bar-data-list-item");
        places.forEach(place => {
            const marker = new google.maps.Marker({
                position: {
                    lat: parseFloat(place.getAttribute('data-latitude')),
                   lng: parseFloat(place.getAttribute('data-longitude')),

                },
                title: place.getAttribute('data-name'),
                map: this.map
            })
        })
    }

    getLatLng() {
        let lat_lng = document.querySelector('main').getAttribute('data-coords');

        let urlParams = window.location.search;
        if (urlParams === '') {
            return [40.7608, -111.8901];
        } else {
            const newParams = urlParams.slice(9).split(',').map(str => {return parseFloat(str)});
            return newParams;
        }
    }


}