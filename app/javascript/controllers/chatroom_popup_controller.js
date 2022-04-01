import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["chatPopUp"]

  connect () {
    console.log(this.chatPopUpTarget)
  }

  hide () {
    this.chatPopUpTarget.classList.toggle("hidden")
  }
}
