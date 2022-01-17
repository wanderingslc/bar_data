export default class extends Controller{
    static targets = ['map']

    connect() {
        if(this.hasMapTarget) {
            let lat = parseFloat(this.mapTarget.dataset.lat)
            let lon = parseFloat(this.mapTarget.dataset.lon)
            let location = {lat: lat, lng: lon};

            var map = new (google.maps.Map)(this.mapTarget, {zoom: 10, center: location});
            var marker = new (google.maps.Marker)({position: location, map})
        }
    }
}