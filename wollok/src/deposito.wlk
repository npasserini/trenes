object deposito {
	const property formaciones = []
	const property locomotoras = []

	method agregarFormacion(formacion) { formaciones.add(formacion) }
	method agregarLocomotora(locomotora) { locomotoras.add(locomotora) }

	// Punto 7
	method necesitaConductorExperimentado() = formaciones.any{ tren => tren.esCompleja() }

	// Punto 8
	method agregarLocomotoraATren(formacion) {
		if (not formacion.puedeMoverse()) {
			const locomotora = locomotoras.findOrElse(
				{ locomotora => locomotora.arrastre() > formacion.arrastreFaltante() },
				{ throw new Exception("No se encontró una locomotora") }	
			)

			formacion.agregarLocomotora(locomotora)
			locomotoras.remove(locomotora)
		}
	}

}

