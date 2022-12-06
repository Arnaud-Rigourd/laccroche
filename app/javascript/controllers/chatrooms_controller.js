import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chatrooms"
export default class extends Controller {
  static targets = ["chatbox"]

  connect() {
    console.log("Hello from chatrooms stimulus controller!")
  }

  open(event) {
    event.preventDefault()
    console.log("Method open is connected!")
    this.chatboxTarget.classList.toggle("d-none")
  }
}
