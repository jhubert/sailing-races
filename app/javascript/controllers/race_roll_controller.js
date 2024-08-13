import { Controller } from "@hotwired/stimulus"

function renderTemplate(template, data) {
  // Use template literals for a simple replacement
  return template
    .replace("TEMPLATE_NAME", data.name)
    .replace("TEMPLATE_HOMETOWN", data.hometown)
    .replace("TEMPLATE_SAILNUMBER", data.sail_number);
}

export default class extends Controller {
  static targets = ["template", "list"];

  async initialize() {
    const storedRacers = localStorage.getItem('unsavedRacers');

    if (storedRacers) {
      this.unsavedRacers = JSON.parse(storedRacers);
    } else {
      this.unsavedRacers = [{
        id: 100,
        name: 'John Smith',
        hometown: 'KCMO',
        sail_number: '123'
      }];
    }

    await this.setupSailorsInLocalCache();
  }

  connect() {
    this.renderUnsavedRacers();
  }

  renderUnsavedRacers() {
    this.unsavedRacers.forEach(racer => {
      // Correct method usage
      this.listTarget.insertAdjacentHTML('beforeend', renderTemplate(this.templateTarget.innerHTML, racer));
    });
  }

  async setupSailorsInLocalCache() {
    const response = await fetch('/sailors.json', {
      method: 'GET',
      headers: { 'Content-Type': 'application/json', 'Accept': 'application/json' }
    });
    const sailors = await response.json();
    localStorage.setItem('Sailors', JSON.stringify(sailors));
  }
}
