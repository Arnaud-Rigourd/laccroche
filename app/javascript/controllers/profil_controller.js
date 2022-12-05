import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profil"
export default class extends Controller {
  static targets = ["myToggle", "myProjects", "projectCards", "myLikes", "newProject", "projectBtn", "likeBtn"]

  // connect() {
  //   console.log(this.likeBtnTarget)
  // }

  toggleProjects() {
    this.projectCardsTarget.classList.remove("d-none")
    this.projectBtnTarget.classList.add("is-active")
    this.myLikesTarget.classList.add("d-none")
    this.likeBtnTarget.classList.remove("is-active")
  }

  toggleLikes() {
    this.myLikesTarget.classList.remove("d-none")
    this.likeBtnTarget.classList.add("is-active")
    this.projectCardsTarget.classList.add("d-none")
    this.projectBtnTarget.classList.remove("is-active")
  }
}
