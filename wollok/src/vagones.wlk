class Vagon {
  method peso()
  method esLiviano() = self.peso() < 2500
}

class VagonPasajeros inherits Vagon {
  const largo
  const ancho
  
  method cantidadDePasajeros() = if (ancho <= 2.5) largo * 8 else largo * 10
  override method peso() = self.cantidadDePasajeros() * 80
}

class VagonCarga inherits Vagon {
  const cargaMaxima

  method cantidadDePasajeros() = 0
  override method peso() = cargaMaxima + 160
}
