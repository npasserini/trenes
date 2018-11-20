package xtend

import org.junit.Assert
import org.junit.Before
import org.junit.Test

class DepositoTest extends Assert {

	val vagonChico = new VagonPasajeros(3.75, 2)
	val vagonGrande = new VagonPasajeros(10, 3)
	val vagonCarga = new VagonCarga(100)

	val loco1 = new Locomotora(1000, 12000)
	val loco2 = new Locomotora(10000, 10000)

	val tren = new Tren(
		#[vagonChico, vagonGrande, vagonCarga],
		#[loco2]
	)

	val deposito = new Deposito()

	@Before()
	def void prepararDeposito() {
		deposito.agregarFormacion(tren)
	}

	def testNecesitaConductorExperimentado() {
		assertTrue(deposito.necesitaConductorExperimentado)
	}

	def testAgregarLocomotoraATrenCorrectamente() {
		deposito.agregarLocomotora(loco1)
		assertEquals(1, deposito.locomotoras.size)

		deposito.agregarLocomotoraATren(tren)
		assertEquals(0, deposito.locomotoras.size)
	}

	@Test(expected=Exception)
	def testAgregarLocomotoraATrenCuandoNoHayLocomotora() {
		deposito.agregarLocomotoraATren(tren)
	}
}
