package xtend

import org.eclipse.xtend.lib.annotations.Accessors

class Deposito {
	val formaciones = <Tren>newArrayList
	
	@Accessors
	val locomotoras = <Locomotora>newArrayList

	def agregarFormacion(Tren formacion) { formaciones.add(formacion) }
	def agregarLocomotora(Locomotora locomotora) { locomotoras.add(locomotora) }

	// Punto 7
	def necesitaConductorExperimentado() { formaciones.exists[esCompleja] }

	// Punto 8
	def agregarLocomotoraATren(Tren formacion) {
		if(formacion.puedeMoverse) return

		val locomotora = locomotoras.findFirst[arrastre > formacion.arrastreFaltante]
		if(locomotora === null) {
			throw new Exception("No se encontró una locomotora")
		}

		formacion.agregarLocomotora(locomotora)
		locomotoras.remove(locomotora)
	}

}
