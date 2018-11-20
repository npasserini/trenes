import { Tren } from "./trenes";
import { Locomotora } from "./locomotoras";
import { VagonPasajeros, VagonCarga } from "./vagones";

describe("Trenes", () => {
  const vagonChico = new VagonPasajeros(3.75, 2);
  const vagonGrande = new VagonPasajeros(10, 3);
  const vagonCarga = new VagonCarga(100);

  const loco1 = new Locomotora(1000, 12000);
  const loco2 = new Locomotora(10000, 10000);

  var tren;

  beforeEach(() => {
    tren = new Tren([vagonChico, vagonGrande, vagonCarga], [loco1, loco2]);
  });

  test("Tren.cantidadDePasajeros", () => {
    expect(tren.cantidadDePasajeros()).toBe(130);
  });

  test("Tren.cantidadDeVagonesLivianos", () => {
    expect(tren.cantidadDeVagonesLivianos()).toBe(2);
  });

  test("Tren.puedeMoverse", () => {
    expect(tren.puedeMoverse()).toBeTruthy();

    tren.locomotoras = [loco2];
    expect(tren.puedeMoverse()).toBeFalsy();
  });

  // Auxiliares
  test("Tren.peso", () => {
    expect(tren.peso()).toBe(21660);
  });

  test("Tren.unidades", () => {
    expect(tren.unidades().length).toBe(5);
  });

  test("Tren.esCompleja", () => {
    expect(tren.esCompleja()).toBeTruthy();
  });
});
