import { Controller } from "@hotwired/stimulus";
import { FetchRequest } from "@rails/request.js";

export default class extends Controller {
  static values = { url: String, setting: String, height: String }

  update(event) {
    if (this.element != event.target) return;
    const height = parseInt(this.element.style.height);
    if (isNaN(height)) return;

    let formData = new FormData();
    formData.append("height", height);
    formData.append("setting", this.settingValue);

    const request = new FetchRequest(
      "patch", this.urlValue, { body: formData }
    );
    request.perform();
  }
}
