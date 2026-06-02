import provincias.*
class ProfesionalesVinculadosAUnaUniversidad {
    const property universidad

    method honorarios() {
        return universidad.honorariosRecomendados()
    }

    method provinciasHabilitadas() {
        return universidad.provincia().asList()
    }
}

class ProfesionalesAsociadosDelLitoral {
    const provinciasHabilitadas = [santaFe, entreRios, corrientes]
    const property universidad

    method honorarios() {
        return 3000
    }

    method provinciasHabilitadas() {
        return provinciasHabilitadas
    }
}

class ProfesionalesLibres {
    const property honorarios
    const property provinciasHabilitadas
    const property universidad
}
