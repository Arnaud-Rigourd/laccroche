import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select";

// Connects to data-controller="tom-select"
export default class extends Controller {
  static targets = ["test"]

  connect() {
    console.log("TEST2")
    console.log(this.testTarget)

    new TomSelect(this.element)
    console.log("Hello from Tom Select!")
  }
}
