import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["toggleable"];
  static classes = ["toggle"]

  toggle() {
    this.toggleableTargets.forEach((t) => t.classList.toggle(this.toggleClass));
  }

  hide(event) {
    if (this.element.contains(event.target) === false) {
      this.toggleableTargets.forEach((t) => t.classList.add(this.toggleClass));
    }
  }
}
