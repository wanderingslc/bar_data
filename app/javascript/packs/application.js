// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import 'popper.js'

import 'bootstrap'
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "@fortawesome/fontawesome-free/css/all"
import "trix"
import "@rails/actiontext"


Rails.start()
Turbolinks.start()
ActiveStorage.start()




import 'controllers'

// $(document).on('ready turbolinks:load', () => {
//     const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
//     const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
//     // $('[data-toggle="tooltip"]').tooltip();
//     // $('[data-toggle="popover"]').popover();
// });


window.initMap = function(...args) {
    const event = document.createEvent("Events");
    event.initEvent('google-maps-callback', true, true);
    event.args = args;
    window.dispatchEvent(event);
}

