import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profil"
export default class extends Controller {
  static targets = ["myToggle", "myProjects", "projectCards", "myLikes", "newProject"]

  // connect() {
  //   if (this.myProjectsTarget.classList === "d-none") {

  //   }
  // }

  toggleProjects() {
    this.projectCardsTarget.classList.toggle("d-none")
  }

  // toggleLikes() {
  //   this.projectCardsTarget.classList.toggle("d-none")
  // }
}
