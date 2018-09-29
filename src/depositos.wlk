/**
 * Clase Deposito
 */
class Deposito {
  var formaciones = []
  
  method agregarFormacion(formacion) {
    formaciones.add(formacion)
  }
  
  method vagonesMasPesados() {
    var acum = []
    formaciones.forEach({ tren => acum.add(tren.vagonMasPesado()) })
    return acum
  }
  
  method necesitaConductorExperimentado() {
    return formaciones.any({ tren => tren.esCompleja() })
  }  
}