import * as R from "ramda";

export class Tren {
  constructor(vagones, locomotoras) {
    this.locomotoras = locomotoras;
    this.vagones = vagones;
  }

  cantidadDePasajeros() {
    return R.sum(this.vagones.map(vagon => vagon.cantidadDePasajeros()));
  }

  // Punto 1
  cantidadDeVagonesLivianos() {
    return this.vagones.filter(vagon => vagon.esLiviano()).length;
  }

  // Punto 4
  puedeMoverse() {
    return this.arrastreFaltante() == 0;
  }

  arrastreFaltante() {
    return R.max(0, this.peso() - this.arrastre());
  }

  arrastre() {
    return R.sum(this.locomotoras.map(locomotora => locomotora.arrastre));
  }

  // Punto 7 (parcial)
  esCompleja() {
    return this.unidades().length > 20 || this.peso() > 1000;
  }

  peso() {
    return R.sum(this.unidades().map(unidad => unidad.peso()));
  }

  unidades() {
    return this.locomotoras.concat(this.vagones);
  }

  // Punto 8 (parcial)
  agregarLocomotora(locomotora) {
    this.locomotoras.push(locomotora);
  }
}
