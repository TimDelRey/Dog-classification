import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["link"]

  connect() {
    console.log('Hello dog')
  }

  choiceSize() {
    this.linkTarget.click()
  }
}
