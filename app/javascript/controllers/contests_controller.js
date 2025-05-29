import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="contests"
export default class extends Controller {
  fetchContests(event) {
    const year = event.target.value

    if (year) {
      const url = `/games/contests_by_year?year=${year}`

      fetch(url, {
        headers: {
          "Accept": "text/vnd.turbo-stream.html"
        }
      })
        .then(response => response.text())
        .then(html => {
          Turbo.renderStreamMessage(html)
        })
    }
  }
}
