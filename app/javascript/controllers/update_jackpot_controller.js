import { Controller } from "@hotwired/stimulus";
import confetti from 'canvas-confetti';



// Connects to data-controller="update-jackpot"
export default class extends Controller {
  static targets = ['total','quantity']

  connect() {
    // this.updateTotal();
  }

  reward(event) {
    this.updateTotal(event);
    this.celebrate();
    this.textinput(event);

  }

  celebrate() {
    confetti();
  }

  textinput(event){
    const quantity = parseInt(event.currentTarget.value,10)
    this.quantityTarget.innerText = quantity
  }

  updateTotal(event) {
    // console.log(this.quantityTarget.value);
    const quantity = parseInt(event.currentTarget.value,10);
    // console.log(typeof quantity);
    if (quantity >= 0) {
      const total = quantity * (1/2)
      // console.log(total)
      this.totalTarget.innerText = total
      // console.log(this.totalTarget.innerText)
    } else {
      // console.log(startDate)
      // console.log(quantity)
      this.totalTarget.textContent = "0"
    }
  }
}





//   const quantity = parseInt(this.quantityTarget.value);
// const total = quantity * 2;
// this.totalTarget.textContent = total;
