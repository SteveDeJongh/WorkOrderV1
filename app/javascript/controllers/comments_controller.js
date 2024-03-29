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
    const editButtonID = event.params["edit"];

    const form = document.getElementById(formID);
    const commentBody = document.getElementById(commentBodyID);
    const editButton = document.getElementById(editButtonID);

    form.classList.toggle("d-none");
    form.classList.toggle("mt-3");
    commentBody.classList.toggle("d-none");
    this.toggleEditButton(editButton)
  }

  toggleEditButton(editButton) {
    if (editButton.innerText === "Edit") {
      editButton.innerText = "cancel";
    } else {
      editButton.innerText = "Edit";
    }
    this.toggleEditButtonClass(editButton);
  }

  toggleEditButtonClass(editButton) {
    editButton.classList.toggle("btn-secondary");
    editButton.classList.toggle("btn-warning");
  }
}
