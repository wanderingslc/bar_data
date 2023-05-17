import {Controller} from 'stimulus'
import * as url from "url";

export default class extends Controller{
    static targets = ['map']
    static latLng = [];
    connect() {

       if (typeof(google) !== "undefined") {
           setTimeout(this.initMap(), 1000);
       }
    }

    async initMap() {
        const latLng = document.querySelector('main').getAttribute('data-coords').split(',').map(str => {return parseFloat(str)})
        const { AdvancedMarkerElement } = await google.maps.importLibrary("marker");
        this.map = new google.maps.Map(this.mapTarget, {
            center: new google.maps.LatLng( latLng[0], latLng[1]),
            zoom: 15,
            mapId: 'f81ae4ad108280cb ',
            options: {
            },

        })
        const places = document.querySelectorAll("li.bar-data-list-item");
        places.forEach(place => {
            const marker = new AdvancedMarkerElement({
                position: {
                    lat: parseFloat(place.getAttribute('data-latitude')),
                   lng: parseFloat(place.getAttribute('data-longitude')),

                },
                title: place.getAttribute('data-name'),
                map: this.map
            })
        })
    }
    // Saving for future reference
    // getLatLng() {
    //     let lat_lng = document.querySelector('main').getAttribute('data-coords');
    //     console.log('in get latlng',lat_lng);
    //     return lat_lng;
    //     let urlParams = window.location.search;
    //     if (urlParams === '') {
    //         return [40.7608, -111.8901];
    //     } else {
    //         const newParams = urlParams.slice(9).split(',').map(str => {return parseFloat(str)});
    //         return newParams;
    //     }
    // }

}