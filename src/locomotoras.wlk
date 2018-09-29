/**
 * Clase Locomotora
 */
class Locomotora {
  const peso
  const pesoMaximo
  const velocidadMaxima
  
  constructor(_peso, _pesoMaximo, _velocidadMaxima) {
    peso = _peso
    pesoMaximo = _pesoMaximo
    velocidadMaxima = _velocidadMaxima
  }
  
  method cuantoPuedeArrastrar() = pesoMaximo - peso
  
  method peso() = peso
  
  method pesoMaximo() = pesoMaximo
  
  method velocidadMaxima() = velocidadMaxima
}
