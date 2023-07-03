import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-jackpot"
export default class extends Controller {
  static targets = ['quantity','total']

  connect() {

  }

  reward() {
    const quantity = parseInt(this.quantityTarget.value);
    const total = quantity * (1/2);
    this.totalTarget.innerText = total
  }
}
