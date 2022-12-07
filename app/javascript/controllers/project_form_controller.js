import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="project-form"
export default class extends Controller {
  static targets = ["music", "video"]
  connect() {
    this.videoUrl = document.querySelector(".project_video_url")
    this.musicUrl = document.querySelector(".project_music_url")
    this.musicUrl.classList.add("d-none")
    this.videoUrl.classList.add("d-none")
  }
  toggle(event) {

    if ( event.target.value === "Music" ) {
      this.musicTarget.disabled = false
      this.videoTarget.disabled = true
      this.videoUrl.classList.add("d-none")
      this.musicUrl.classList.remove("d-none")

    }else if ( event.target.value === "Video" ) {
      this.musicTarget.disabled = true
      this.videoTarget.disabled = false
      this.musicUrl.classList.add("d-none")
      this.videoUrl.classList.remove("d-none")
    } else {
      this.videoTarget.disabled = true
      this.musicTarget.disabled = true
      this.musicUrl.classList.add("d-none")
      this.videoUrl.classList.add("d-none")
    }

  }

}
