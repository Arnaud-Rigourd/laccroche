import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chatrooms"
export default class extends Controller {
  // TODO: 2 nouvelles targets : listing des chatrooms + chatroom
  static targets = ["chatbox"]

  connect() {
    console.log("Hello from chatrooms stimulus controller!")
  }

  openChatbox(event) {
    event.preventDefault()
    console.log("Method openChatbox is connected!")
    this.chatboxTarget.classList.toggle("d-none")
  }

  openChatroom(event) {
    event.preventDefault()
    console.log("Method openChatroom is connected!")

    // TODO: jouer avec la target de listing des chatrooms, et les targetSSSSS chatroom
    // acces event.target.dataset.chatroomID => ex 2

    // jouer avec la classe d-none a ajouter ou retirer sur les targets
  }


}
