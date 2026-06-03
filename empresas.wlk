class Empresa {
    const profesionales = []
    const clientes = []
    const property honorarioDeReferencia

    method agregarCliente(cliente) {
        clientes.add(cliente)
    }

    method eliminarCliente(cliente) {
        clientes.remove(cliente)
    }

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

    // ETAPA 2

    method puedeSatisfacerA(solicitante) {
        return profesionales.any({profesional => solicitante.puedeSerAtentidaPor(profesional)})
    }

    method darServicio(solicitante) {
        var profesionalApto = profesionales.filter({profesional => solicitante.puedeSerAtentidaPor(profesional)}).anyOne()

        if (solicitante.puedeSerAtentidaPor(profesionalApto)) {
            profesionalApto.cobrarImporte(profesionalApto.honorarios())
            self.agregarCliente(solicitante)
        }   

    }
}