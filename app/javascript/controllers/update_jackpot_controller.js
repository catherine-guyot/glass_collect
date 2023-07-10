import { Controller } from "@hotwired/stimulus";
import confetti from 'canvas-confetti';



// Connects to data-controller="update-jackpot"
export default class extends Controller {
  static targets = ['quantity','total', 'startDate', ]

  connect() {
    this.updateTotal();
    // console.log(this.quantityTarget)
  }

  reward() {
    this.updateTotal();
    // console.log("hi")
    this.celebrate();
  }

  callcelebrate(){
    this.celebrate();
  }

  celebrate() {
    confetti();
  }


  updateTotal() {
  console.log(this.quantityTarget.value)
  const quantity = parseInt(this.quantityTarget.value,10);


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
