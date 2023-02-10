import {Controller} from 'stimulus'

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
        this.map = new google.maps.Map(this.mapTarget, {
            center: new google.maps.LatLng(40.7608, -111.8901),
            zoom: 15
        })
    }
}