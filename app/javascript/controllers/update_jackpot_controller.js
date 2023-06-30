import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-jackpot"
export default class extends Controller {
  static targets = ['quantity','total']

  connect() {

  }

  reward() {
    const quantity = parseInt(this.quantityTarget);
    const total = quantity * 0.5
    this.totalTarger.textContent = total
  }
}
