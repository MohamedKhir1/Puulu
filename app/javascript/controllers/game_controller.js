import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="game"
export default class extends Controller {
  static targets = ['kind', 'kindExtra']

  connect() {
    console.log('hello')
  }

  toggleKind(evt) {
    // console.log(evt.target.dataset.gameTarget)

    if (evt.target.dataset.gameTarget === "kind") {
      console.log("prout")
      this.kindExtraTargets.forEach(element => {
        element.disabled = true;
      });
      // document.getElementById("kindExtra").disabled = true;
    }else {
      console.log("caca")
    }
  }
}
