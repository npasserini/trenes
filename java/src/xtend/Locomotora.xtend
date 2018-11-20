package xtend

import org.eclipse.xtend.lib.annotations.Accessors

class Locomotora implements Pesable  {
	@Accessors
	val double peso

	@Accessors
	val double arrastre

	new(double peso, double arrastre) {
		this.peso = peso
		this.arrastre = arrastre
	}
}
