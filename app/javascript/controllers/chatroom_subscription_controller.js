import { Controller } from "stimulus"
import consumer from '../channels/consumer'

export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages", "form"]

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageScrollDownAndResetForm(data) }
    )
  }

    #insertMessageScrollDownAndResetForm(data) {
      this.messagesTarget.insertAdjacentHTML("beforeend", data)
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
      // window.scrollTo(0, document.body.scrollHeight)
      // window.scrollTo(0, this.formTarget.scrollHeight)
      this.formTarget.reset()
    }

    disconnect() {
      console.log("Unsubscribed from the chatroom")
      this.channel.unsubscribe()
    }
}
