import {Controller} from "@hotwired/stimulus";

const options = {
    enableHighAccuracy: true,
    maximumAge: 0
}

export default class extends Controller {
    static targets = ["checkbox", 'lat', 'lng', 'submit'];
    static values = {url: String}
onConnect() {
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
        console.log('connected');
        console.log(this.targetsCheckbox.value);
}
    checkboxTargetConnected(element) {
        console.log(element)
    }

    toggleCheckbox() {
        console.log(this.checkboxTarget.checked);
        if (this.checkboxTarget.checked) {
            // let button = document.getElementById('geolocate-button');
            // button.classList.remove('disabled');
            this.locate();
        }
    }

    locate() {
       this.search()
    }

    search() {
        navigator.geolocation.getCurrentPosition(this.success.bind(this), this.error, options );
    }

    success(pos) {
        const crd = pos.coords;
        console.log([crd.latitude, crd.longitude]);
        this.latTarget.value = crd.latitude;
        this.lngTarget.value = crd.longitude;
        document.getElementById('geo_info_lat').value = crd.latitude;
        document.getElementById('geo_info_lng').value = crd.longitude;
        document.getElementById('geolocate-button').classList.remove('disabled');
        // redirect with coords in params
        // location.assign(`/locations/?place=${crd.latitude}, ${crd.longitude}`)
        // location.assign(`homepage?lat_lng=${crd.latitude},${crd.longitude}`);
    }

    error(err) {
        console.error(`ERROR(${err.code}): ${err.message}`)
    }
}