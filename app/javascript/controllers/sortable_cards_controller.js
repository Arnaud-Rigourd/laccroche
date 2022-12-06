import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"

export default class extends Controller {
  static targets = ["cards"]

  connect() {
    Sortable.create(this.element, {
      ghostClass: "ghost",
      animation: 150,
      onEnd: (event) => {
        // alert(`${event.oldIndex} moved to ${event.newIndex}`)
        // console.log(`${event.oldIndex} moved to ${event.newIndex}`)
        // console.log(event.newIndex)
        // console.log(event)
        // console.log(this.cardsTargets[1])
        // console.log(this.cardsTargets.indexOf(this.event))
        // indexOf(this.cardsTargets[event.oldIndex]) = indexOf(this.cardsTargets[event.newIndex])
      }
    })
  }
}
