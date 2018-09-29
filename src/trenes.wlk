/**
 * Clase Tren
 */
class Tren {
  var locomotoras
  const vagones
  
  constructor(_locomotoras, _vagones) {
    locomotoras = _locomotoras
    vagones = _vagones
  }
  
  method cantidadDePasajeros() {
    return vagones.sum({ vagon => vagon.cantidadDePasajeros() })
  }
  
  method cantidadDeVagonesLivianos() {
    return vagones.filter({ vagon => vagon.pesoMaximo() < 2500 }).size()
  }
  
  method velocidadMaxima() {
    return locomotoras.sortedBy({ loc1, loc2 => loc1.velocidadMaxima() < loc2.velocidadMaxima() }).first().velocidadMaxima()
  }
  
  method esEficiente() {
    return locomotoras.all({ locomotora => locomotora.cuantoPuedeArrastrar() > locomotora.peso() * 5 })
  }
  
  method cuantoEmpujeFalta() {
    var pesoMaximoVagones = vagones.sum({ vagon => vagon.pesoMaximo() })
    var arrastreLocomotoras = locomotoras.sum({ locomotora => locomotora.cuantoPuedeArrastrar() })
    if (arrastreLocomotoras < pesoMaximoVagones) {
      return (pesoMaximoVagones - arrastreLocomotoras)
    }
    return 0
  }
  
  method vagonMasPesado() {
    return vagones.sortedBy({ vag1, vag2 => vag1.pesoMaximo() > vag2.pesoMaximo()}).first()
  }
  
  method esCompleja() {
    var totalUnidades = vagones.size() + locomotoras.size()
    var pesoVagones = vagones.sum({ vagon => vagon.pesoMaximo() })
    var pesoLocomotoras = locomotoras.sum({ locomotora => locomotora.peso() })
    var pesoTotal = pesoVagones + pesoLocomotoras
    if (totalUnidades > 20 || pesoTotal > 10000) {
      return true
    }
    return false
  }
  
  method agregarLocomotora(_locomotora) {
    locomotoras.add(_locomotora)
  }
}