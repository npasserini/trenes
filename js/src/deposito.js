import * as R from "ramda";

export const deposito = {
  formaciones: [],
  locomotoras: [],

  agregarFormacion(formacion) {
    this.formaciones.push(formacion);
  },
  agregarLocomotora(locomotora) {
    this.locomotoras.push(locomotora);
  },

  // Punto 7
  necesitaConductorExperimentado() {
    return this.formaciones.some(tren => tren.esCompleja());
  },

  // Punto 8
  agregarLocomotoraATren(formacion) {
    if (!formacion.puedeMoverse()) {
      const locomotora = this.locomotoras.find(
        locomotora => locomotora.arrastre > formacion.arrastreFaltante()
      );

      if (!locomotora) {
        throw new Exception("No se encontró una locomotora");
      }

      formacion.agregarLocomotora(locomotora);
      this.locomotoras.splice(this.locomotoras.indexOf(locomotora), 1);
    }
  }
};
