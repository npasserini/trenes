package xtend

import org.junit.Assert
import org.junit.Test

class VagonesTest extends Assert {
	val vagonChico = new VagonPasajeros(3.75, 2)
	val vagonGrande = new VagonPasajeros(10, 3)
	val vagonCarga = new VagonCarga(100)
	
	@Test
	def testCantidadDePasajeros() {
		assertEquals(30, vagonChico.cantidadDePasajeros)
		assertEquals(100, vagonGrande.cantidadDePasajeros)
	}

	@Test
	def testPeso() {
		assertEquals(2400, vagonChico.peso, 0)
		assertEquals(8000, vagonGrande.peso, 0)
		assertEquals(260, vagonCarga.peso, 0)
	}

	@Test
	def testEsLiviano() {
		assertTrue(vagonChico.esLiviano)
		assertFalse(vagonGrande.esLiviano)
	}
}
