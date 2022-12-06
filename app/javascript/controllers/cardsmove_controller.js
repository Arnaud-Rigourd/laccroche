import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cardsmove"
export default class extends Controller {
  static targets = ["cards"]
  connect() {
  }
}
