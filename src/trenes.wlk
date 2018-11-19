class Tren {
	const property locomotoras
	const property vagones

	method cantidadDePasajeros() {
		return vagones.sum({ vagon => vagon.cantidadDePasajeros() })
	}
	
	// Punto 1
	method cantidadDeVagonesLivianos() = vagones.count { vagon => vagon.esLiviano() } 

	// Punto 4
	method puedeMoverse() = self.arrastreFaltante() == 0

	method arrastreFaltante() = (self.peso() - self.arrastre()).max(0)  

	method arrastre() = locomotoras.sum { locomotora => locomotora.arrastre() }
	
	// Punto 7 (parcial)
	method esCompleja() = self.unidades().size() > 20 or self.peso() > 1000

	method peso() = self.unidades().sum { unidad => unidad.peso() }

	method unidades() = locomotoras + vagones

	// Punto 8 (parcial)
	method agregarLocomotora(locomotora) { locomotoras.add(locomotora) }
}
