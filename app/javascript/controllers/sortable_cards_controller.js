import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ["cards", "card"]

  connect() {
    Sortable.create(this.element, {
      ghostClass: "ghost",
      animation: 150,
      onEnd: (event) => {
        const csrfToken = document.getElementsByName("csrf-token")[0].content;

        this.projectOrdered = []
        this.cardTargets.forEach ((card) => {
          this.projectOrdered.push(parseInt(card.dataset.projectId, 10))
        })
        console.log(this.projectOrdered)

        const formData = new FormData();
        formData.append("projectOrdered", this.projectOrdered)
        console.log(formData)

        fetch(`/sort`, {method: "POST",
        headers: { Accept: "application/json", "X-CSRF-Token": csrfToken },
        body: formData
    })
        .then((data) => {

          console.log("hello from data fetch")
        })
      }
    })
  }
}
