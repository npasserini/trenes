/**
 * Clase Deposito
 */
class Deposito {
  var formaciones = []
  var locomotoras = []
  
  method agregarFormacion(formacion) {
    formaciones.add(formacion)
  }
  
  method agregarLocomotora(locomotora) {
    locomotoras.add(locomotora)
  }
  
  method vagonesMasPesados() {
    var acum = []
    formaciones.forEach({ tren => acum.add(tren.vagonMasPesado()) })
    return acum
  }
  
  method necesitaConductorExperimentado() {
    return formaciones.any({ tren => tren.esCompleja() })
  }
  
  method agregarLocomotoraATren() {
    var locomotoraAgregada
    formaciones.forEach({ formacion => {
        if (formacion.cuantoEmpujeFalta() > 0 && locomotoras.size() > 0) {
          locomotoraAgregada = locomotoras.find({ locomotora =>  locomotora.cuantoPuedeArrastrar() > formacion.cuantoEmpujeFalta() }).first()
          locomotoras.remove(locomotoraAgregada)        
        }
      }
    })
  }
  
  method locomotoras() = locomotoras
  
  method formaciones() = formaciones
  
}