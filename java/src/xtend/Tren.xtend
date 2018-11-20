package xtend

import java.util.List
import static extension java.lang.Math.max
import org.eclipse.xtend.lib.annotations.Accessors

class Tren {
	@Accessors
	val vagones = <Vagon>newArrayList

	@Accessors
	val locomotoras = <Locomotora>newArrayList

	new(List<Vagon> vagones, List<Locomotora> locomotoras) {
		this.vagones.addAll(vagones)
		this.locomotoras.addAll(locomotoras)
	}

	def getCantidadDePasajeros() { vagones.map[it.cantidadDePasajeros].reduce[a, b|a + b] }

	// Punto 1
	def cantidadDeVagonesLivianos() { vagones.filter[esLiviano].size }

	// Punto 4
	def puedeMoverse() { arrastreFaltante == 0 }

	def arrastreFaltante() { (peso - arrastre).max(0) }

	def getArrastre() { locomotoras.sum[arrastre] }

	// Punto 7 (parcial)
	def esCompleja() { unidades.size > 20 || peso > 1000 }

	def getPeso() { unidades.sum[peso] }

	def unidades() { locomotoras + vagones }

	// Punto 8 (parcial)
	def agregarLocomotora(Locomotora locomotora) { locomotoras.add(locomotora) }

	// Auxiliares
	def <T> sum(Iterable<T> iterable, (T)=>Double transform) {
		iterable.map(transform).reduce[a, b|a + b]
	}
}
