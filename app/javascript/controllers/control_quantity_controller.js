import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="control-quantity"
export default class extends Controller {
  static targets = ['number','content']

  connect() {
    // console.log(this.numberTarget)
  }

  // compare() {
  //   const quantity = parseInt(this.numberTarget.value,10);
  //   const available =

  // }
}
