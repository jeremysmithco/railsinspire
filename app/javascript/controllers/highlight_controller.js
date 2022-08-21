import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    this.element.querySelectorAll('pre').forEach((block) => {
      hljs.highlightElement(block);
    });
  }
}
