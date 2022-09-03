import { Controller } from "@hotwired/stimulus";
import { FetchRequest } from "@rails/request.js";
import { useResize, useDebounce } from "stimulus-use";

export default class extends Controller {
  static values = { url: String, setting: String, currentHeight: String }
  static debounces = ["resize"];

  connect() {
    useResize(this);
    useDebounce(this);
  }

  resize({ height }) {
    console.log(height);
    console.log(this.currentHeightValue);

    if (height == this.currentHeightValue) return;

    this.update(height);
  }

  async update(height) {
    let formData = new FormData();
    formData.append("height", height);
    formData.append("setting", this.settingValue);

    const request = new FetchRequest("patch", this.urlValue, { body: formData });
    const response = await request.perform();
    if (response.ok) {
      this.currentHeightValue = height;
    }
  }
}
