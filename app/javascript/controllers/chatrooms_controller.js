import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chatrooms"
export default class extends Controller {
  // TODO: 2 nouvelles targets : listing des chatrooms + chatroom
  static targets = ["chatbox", "chatroomsList", "chatroom"]

  connect() {
    // console.log("Hello from chatrooms stimulus controller!")
  }

  toggleChatbox(event) {
    event.preventDefault()
    console.log("Method toggleChatbox is connected!")
    this.chatboxTarget.classList.toggle("d-none")
    // Reset chatbox content
    // TODO: afficher la chatrooms list
    this.chatroomsListTarget.classList.remove("d-none")
    // TODO: cacher toutes les chatroom targets
    this.chatroomTargets.forEach(chatroom => {
      chatroom.classList.add("d-none")
    });
  }

  openChatroom(event) {
    event.preventDefault()
    console.log("Method openChatroom is connected!")

    // TODO: Jouer avec la target de listing des chatrooms et les targetSSSSS chatroom
    // acces event.target.dataset.chatroomID => ex 2
    // jouer avec la classe d-none a ajouter ou retirer sur les targets

    // OBJECTIF: lors du clic sur une chatroom de la liste :

    // 1. Reconnaître son ID
    console.log("Voici event : ")
    console.log(event)
    console.log("Voici event.target : ")
    console.log(event.target)
    console.log("Voici event.target.dataset.chatroomId : ")
    console.log(event.target.dataset.chatroomId)

    let chatroomId = event.target.dataset.chatroomId

    // 2. Appliquer la classe d-none au listing des chatrooms
    console.log("Voici this.chatboxTarget : ")
    console.log(this.chatboxTarget)

    this.chatroomsListTarget.classList.add("d-none")

    // 3. Retirer la classe d-none de la chatroom : afficher la chatroom dans le
    //    render qui a l'id chatroomId.
    //      - J'ai l'ID de la chatroom à toggle : chatroomId
    //      - Je veux cibler la data target "chatroom" au moment où dataset.chatroomId = chatroomId

    this.chatroomTargets.forEach(chatroom => {
      if (chatroom.dataset.chatroomId == chatroomId) {
        console.log("Connected in the conditional statement!")
        console.log("Voici this.chatroomTarget : ")
        console.log(chatroom)

        chatroom.classList.remove("d-none")
      }
    });

    // let chatroom = Chatroom.find(chatroomId)
    // ...classList.toggle("d-none")
  }
}
