import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="category-buttons-scroll-down"
export default class extends Controller {
  connect() {
    this.element.scrollIntoView({ behavior: 'smooth', block: 'start'});
  }
}
