import { Controller } from "@hotwired/stimulus";
import { FetchRequest } from "@rails/request.js";
import { useResize, useDebounce } from "stimulus-use";

export default class extends Controller {
  static values = { url: String, setting: String, currentWidth: Number };
  static debounces = ["resize"];

  connect() {
    useResize(this);
    useDebounce(this);
  }

  resize({ width }) {
    if (window.innerWidth < this.minBreakpointSize) return;
    if (width == this.currentWidthValue) return;
    if (width == 0) return;

    this.update(width);
  }

  async update(width) {
    let formData = new FormData();
    formData.append("width", width);
    formData.append("setting", this.settingValue);

    const request = new FetchRequest("patch", this.urlValue, { body: formData });
    const response = await request.perform();
    if (response.ok) {
      this.currentWidthValue = width;
    }
  }

  get minBreakpointSize() {
    return 768;
  }
}
