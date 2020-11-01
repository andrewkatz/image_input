import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['button', 'field', 'fileNameLabel', 'image'];

  get fileName() {
    return this.fieldTarget.value.split('\\').slice(-1);
  }

  onFileChosen() {
    if (this.fieldTarget.value.length === 0) {
      return;
    }

    if (this.hasImageTarget) {
      this.imageTarget.classList.add('hidden');
    }

    this.fileNameLabelTarget.innerText = this.fileName;
    this.fileNameLabelTarget.classList.remove('hidden');

    this.buttonTarget.innerText = 'Change';
  }

  chooseFile(event) {
    event.preventDefault();

    this.fieldTarget.click();
  }
}
