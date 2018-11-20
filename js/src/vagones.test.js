import { VagonPasajeros, VagonCarga } from "./vagones";

describe("Vagones", () => {
  const vagonChico = new VagonPasajeros(3.75, 2);
  const vagonGrande = new VagonPasajeros(10, 3);
  const vagonCarga = new VagonCarga(100);

  test("VagonPasajeroscantidadDePasajeros", () => {
    expect(vagonChico.cantidadDePasajeros()).toBe(30);
    expect(vagonGrande.cantidadDePasajeros()).toBe(100);
  });

  test("Vagon.peso", () => {
    expect(vagonChico.peso()).toBe(2400);
    expect(vagonGrande.peso()).toBe(8000);
    expect(vagonCarga.peso()).toBe(260);
  });

  test("Vagon.esLiviano", () => {
    expect(vagonChico.esLiviano()).toBeTruthy();
    expect(vagonGrande.esLiviano()).toBeFalsy();
  });
});
