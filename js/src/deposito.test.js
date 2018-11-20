import { Tren } from "./trenes";
import { Locomotora } from "./locomotoras";
import { VagonPasajeros, VagonCarga } from "./vagones";
import { deposito } from "./deposito";

describe("Trenes", () => {
  const vagonChico = new VagonPasajeros(3.75, 2);
  const vagonGrande = new VagonPasajeros(10, 3);
  const vagonCarga = new VagonCarga(100);

  const loco1 = new Locomotora(1000, 12000);
  const loco2 = new Locomotora(10000, 10000);

  var tren;

  beforeEach(() => {
    tren = new Tren([vagonChico, vagonGrande, vagonCarga], [loco2]);
    deposito.formaciones = [tren];
  });

  test("Deposito.necesitaConductorExperimentado", () => {
    expect(deposito.necesitaConductorExperimentado()).toBeTruthy();
  });

  test("Deposito.agregarLocomotoraATren => se agrega correctamente", () => {
    deposito.agregarLocomotora(loco1);
    expect(deposito.locomotoras).toEqual([loco1]);

    deposito.agregarLocomotoraATren(tren);
    expect(deposito.locomotoras).toEqual([]);
  });

  test("Deposito.agregarLocomotoraATren => no hay locomotora", () => {
    expect(() => {
      deposito.agregarLocomotoraATren(tren);
    }).toThrow();
  });
});
