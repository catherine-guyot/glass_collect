import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="control-quantity"
export default class extends Controller {
  static targets = ['quantity', 'content']

  connect() {
    // this.compare();
    console.log(this.quantityTarget)
  }


}
