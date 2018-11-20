package xtend

import static extension java.lang.Math.round

interface Pesable {
	def double getPeso()
}

abstract class Vagon implements Pesable {
	def esLiviano() { peso < 2500 }
	def long cantidadDePasajeros()
}

class VagonPasajeros extends Vagon {
	val double largo
	val double ancho

	new(double largo, double ancho) {
		this.largo = largo
		this.ancho = ancho
	}

	override cantidadDePasajeros() { (if(ancho <= 2.5) largo * 8 else largo * 10).round }
	override getPeso() { cantidadDePasajeros * 80 }
}

class VagonCarga extends Vagon {
	val int cargaMaxima

	new(int cargaMaxima) {
		this.cargaMaxima = cargaMaxima
	}

	override cantidadDePasajeros() { 0 }
	override getPeso() { cargaMaxima + 160 }
}
