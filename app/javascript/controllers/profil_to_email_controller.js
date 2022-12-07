import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profil-to-email"
export default class extends Controller {
  static targets = ["viewprofil", "viewemail"]

  transform() {
    this.viewprofilTarget.classList.toggle("hidden")
    this.viewemailTarget.classList.toggle("hidden")
  }
}
