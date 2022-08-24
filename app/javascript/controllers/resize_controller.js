import { Controller } from "@hotwired/stimulus";
import { FetchRequest } from "@rails/request.js";

export default class extends Controller {
  static values = { url: String }

  update(event) {
    if (this.element != event.target) return;
    const width = parseInt(this.element.style.width);
    if (isNaN(width)) return;

    let formData = new FormData();
    formData.append('width', width);

    const request = new FetchRequest(
      "patch", this.urlValue, { body: formData }
    );
    request.perform();
  }
}
