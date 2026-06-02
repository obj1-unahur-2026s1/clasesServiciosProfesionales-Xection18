class Empresa {
    const profesionales = []
    const property honorarioDeReferencia

    method contrarProfesional(profesional) {
        profesionales.add(profesional)
    }

    method despedirProfesional(profesional) {
        profesionales.remove(profesional)
    }

    method contrarAVariosProfesionales(listaDeProfesionales) {
        profesionales.addAll(listaDeProfesionales)
    }

    method despedirAVariosProfesionales(listaDeProfesionales) {
        profesionales.removeAll(listaDeProfesionales)
    }

    method CuantosEstudiaronEnUnaUniversidad(universidad) {
        return profesionales.count({profesional => profesional.universidad() == universidad})
    }

    method profesionalesQueTienenHonorariosMayoresAHonorarioDeReferencia() {
        return profesionales.filter({profesional => profesional.honorarios() > self.honorarioDeReferencia()})
    }

    method universidadesEnLasQueEstudiaronSusProfesionales() {
        return profesionales.map({profesional => profesional.universidad()}).asSet()
    }

    method profesionalMasBarato() {
        return profesionales.min({profesional => profesional.honorarios()})
    }

    method esDeGenteAcotada() {
        return profesionales.all({profesional => profesional.provinciasHabilitadas().size() >= 3})
    }
}