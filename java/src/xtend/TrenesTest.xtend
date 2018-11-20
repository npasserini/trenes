package xtend

import org.junit.Assert
import org.junit.Test

class TrenesTest extends Assert {
	val vagonChico = new VagonPasajeros(3.75, 2)
	val vagonGrande = new VagonPasajeros(10, 3)
	val vagonCarga = new VagonCarga(100)

	val loco1 = new Locomotora(1000, 12000)
	val loco2 = new Locomotora(10000, 10000)

	val tren = new Tren(
		#[vagonChico, vagonGrande, vagonCarga],
		#[loco1, loco2]
	)

	@Test
	def testCantidadDePasajeros() {
		assertEquals(130, tren.cantidadDePasajeros)
	}

	@Test
	def testCantidadDeVagonesLivianos() {
		assertEquals(2, tren.cantidadDeVagonesLivianos)
	}

	@Test
	def testPuedeMoverse() {
		assertTrue(tren.puedeMoverse)

		tren.locomotoras.remove(loco1)
		assertFalse(tren.puedeMoverse)
	}

	// Auxiliares	
	def testPeso() {
		assertEquals(21660, tren.peso, 0)
	}

	def testUnidades() {
		assertEquals(5, tren.unidades.size)
	}

	def testEsCompleja() {
		assertTrue(tren.esCompleja)
	}
}
