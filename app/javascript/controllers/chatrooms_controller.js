import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chatrooms"
export default class extends Controller {
  static targets = ["chatbox"]

  // connect() {
  //   console.log("Hello")
  // }

  open() {
    // console.log("ça marche")
    this.chatboxTarget.classList.toggle("d-none")
  }
}
