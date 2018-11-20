export class Locomotora {
  constructor(peso, arrastre) {
    this._peso = peso;
    this.arrastre = arrastre;
  }

  peso() {
    return this._peso;
  }
}
