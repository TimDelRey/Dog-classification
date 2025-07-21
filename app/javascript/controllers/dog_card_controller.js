import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dog-card"
export default class extends Controller {
  static targets = ["link"]

  connect() {
    console.log('Hello dog')
  }

  choiceSize() {
    this.linkTarget.click()
  }
}
