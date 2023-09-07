import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="game"
export default class extends Controller {
  static targets = ['kind', 'kindExtra']

  toggleKind(evt) {
    // console.log(evt.target.dataset.gameTarget)

    if (evt.target.dataset.gameTarget === "kind") {
      this.kindExtraTargets.forEach(element => {
        element.disabled = true;
      });
    }else {
      this.kindTargets.forEach(element => {
        element.disabled = true;
      });
    }
  }
}
