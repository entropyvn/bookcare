import { Modal } from "tailwindcss-stimulus-components"

export default class extends Modal {

  connect() {
    super.connect();
  }

  open() {
    if (!this.modal.isOpened) {
      this.modal.show()
    }
  }

  close(event) {
    if (event.detail.success) {
      this.modal.hide()
    }
  }
}
