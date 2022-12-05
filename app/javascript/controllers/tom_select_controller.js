import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select";

// Connects to data-controller="tom-select"
export default class extends Controller {
  static values = { options: Array }
  static targets = ["input"]

  connect() {
    // console.log("TEST2")
    // console.log(this.optionsValue)
    // console.log(this.inputTarget)

    const tomSelectOptions = {
      options: this.optionsValue,
      maxItems: 1,
      render:{
        item: function(data, escape) {
          return `<div data-url="${data.url}">${escape(data.text)}</div>`;
        }
      }
    }

    this.select = new TomSelect(this.inputTarget, tomSelectOptions)
    this.select.on('item_add', this.#goToSelectedItemPage.bind(this));
  }

  #goToSelectedItemPage(value, item) {
    // console.log("item selected", value, item)
    // console.log(item.dataset.url)

    window.location = item.dataset.url
  }
}
