import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["boxvideo", "boxmusic", "boxartwork"]

  connect() {
  }

  change_categorie_video(event) {
    event.preventDefault()
    this.boxvideoTarget.classList.toggle("d-none")
    event.target.scrollIntoView({ behavior: 'smooth', block: 'start'});
  }

  change_categorie_artwork(event) {
    event.preventDefault()
    this.boxartworkTarget.classList.toggle("d-none")
    event.target.scrollIntoView({ behavior: 'smooth', block: 'start'});
  }

  change_categorie_music(event) {
    event.preventDefault()
    this.boxmusicTarget.classList.toggle("d-none")
    event.target.scrollIntoView({ behavior: 'smooth', block: 'start'});
  }
}
