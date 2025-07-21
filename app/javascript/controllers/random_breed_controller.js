import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = []

  load() {
    fetch('/breeds/random', { headers: { Accept: 'application/json' } })
      .then(res => res.json())
      .then(data => {
        const container = document.querySelector("#random-breed-container")
        container.innerHTML = this.renderBreedCard(data)
      })
      .catch(err => console.error(err))
  }

  renderBreedCard(breed) {
    return `
      <div class='card'>
        ${breed.image_url ? `<img src="${breed.image_url}" alt="${breed.name}" />` : ""}
        <h3>${breed.name}</h3>
        <p><a href="/breeds/${breed.id}">See more</a></p>
      </div>
    `
  }
}
