import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select";

// Connects to data-controller="tom-select"
export default class extends Controller {
  static targets = ["test"]

  connect() {
    console.log("TEST2")
    console.log(this.testTarget)
    const optionValues = this.element.querySelector(".tom-select-options")
    let options = {}
    options["options"] = JSON.parse(optionValues.innerText);
    new TomSelect(this.testTarget, options)
  }
}
