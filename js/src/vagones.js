export class Vagon {
  // method peso()
  esLiviano() {
    return this.peso() < 2500;
  }
}

export class VagonPasajeros extends Vagon {
  constructor(largo, ancho) {
    super();
    this.largo = largo;
    this.ancho = ancho;
  }

  cantidadDePasajeros() {
    return this.ancho <= 2.5 ? this.largo * 8 : this.largo * 10;
  }

  peso() {
    return this.cantidadDePasajeros() * 80;
  }
}

export class VagonCarga extends Vagon {
  constructor(cargaMaxima) {
    super();
    this.cargaMaxima = cargaMaxima;
  }

  cantidadDePasajeros() {
    return 0;
  }

  peso() {
    return this.cargaMaxima + 160;
  }
}
