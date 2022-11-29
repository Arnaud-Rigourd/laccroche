import { Controller } from "@hotwired/stimulus"
import Sketch from "../sketch"

// Connects to data-controller="sketch"
export default class extends Controller {
  connect() {

    new Sketch({
      dom: this.element
    });
  }
}
