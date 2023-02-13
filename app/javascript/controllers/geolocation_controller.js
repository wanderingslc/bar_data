import {Controller} from "@hotwired/stimulus";

const options = {
    enableHighAccuracy: true,
    maximumAge: 0
}

export default class extends Controller {
    static values = {url: String}

    search() {
        navigator.geolocation.getCurrentPosition(this.success.bind(this), this.error, options );
    }

    success(pos) {
        const crd = pos.coords;
        // redirect with coords in params
        location.assign(`/locations/?place=${crd.latitude}, ${crd.longitude}`)

    }

    error(err) {
        console.log(`ERROR(${err.code}): ${err.message}`)
    }
}