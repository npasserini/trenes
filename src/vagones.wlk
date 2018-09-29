/**
 * Clase VagonPasajeros
 */
class VagonPasajeros {
  const largo;
  const ancho;
  const property cargaMaxima = 0
  
  constructor(_largo, _ancho) {
    largo = _largo
    ancho = _ancho
  }
  
  method cantidadDePasajeros() {
    if (ancho <= 2.5) {
      return largo * 8
    }
    return largo * 10
  }
  
  method pesoMaximo() = self.cantidadDePasajeros() * 80
}

/**
 * Clase VagonCarga
 */
class VagonCarga {
  var property cargaMaxima = 0
  
  method cantidadDePasajeros() = 0
  
  method pesoMaximo() = cargaMaxima + 160
}
