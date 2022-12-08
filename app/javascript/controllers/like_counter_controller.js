import { Controller } from "@hotwired/stimulus"
import { csrfToken } from "@rails/ujs"

// Connects to data-controller="like-counter"
export default class extends Controller {
  static targets = ["deleteLike","postLike", "div"]
  connect() {
    console.log("hello Arnaud ;)")
  }

  like(event) {
    event.preventDefault()
    console.log("coucou Arnaud 3")

    fetch(this.postLikeTarget.href, {
      method: "POST",
      headers: { "Accept": "text/plain", 'X-CSRF-Token': csrfToken() },
    })
      .then(response => response.text())
      .then((data) => {
        this.divTarget.outerHTML= data
      })

      console.log("le like marche Arnaud")
  }

  delete_like(event) {
    event.preventDefault()

    console.log(this.deleteLikeTarget)

    fetch(this.deleteLikeTarget.href, {
      method: "DELETE",
      headers: { "Accept": "text/plain", 'X-CSRF-Token': csrfToken() },
    })
      .then(response => response.text())
      .then((data) => {
        this.divTarget.outerHTML= data
      })

      console.log("le delete marche Arnaud")
  }
}
