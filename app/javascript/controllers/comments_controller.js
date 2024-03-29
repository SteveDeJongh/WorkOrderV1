import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  initialize() { // Runs on initialisation first, but only once.
  }
  connect() { // Runs when we connect to the rails app.
  }

  toggleForm(event) {
    event.preventDefault();
    event.stopPropagation();
    const formID = event.params["form"];
    const commentBodyID = event.params["body"];
    const form = document.getElementById(formID);
    form.classList.toggle("d-none");
    form.classList.toggle("mt-3");
    const commentBody = document.getElementById(commentBodyID);
    commentBody.classList.toggle("d-none");
  }
}
