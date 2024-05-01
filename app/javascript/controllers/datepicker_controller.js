import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// document.addEventListener("DOMContentLoaded", () => {
//   flatpickr(".datepicker", {});
// });
// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element)
  }
}
