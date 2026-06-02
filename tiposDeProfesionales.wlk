import provincias.*
class ProfesionalesVinculadosAUnaUniversidad {
    const universidad

    method honorariosPorHora() {
        return universidad.honorariosRecomendados()
    }

    method provinciasHabilitadas() {
        return universidad.provincia()
    }
}

class ProfesionalesAsociadosDelLitoral {
    const provinciasHabilitadas = [santaFe, entreRios, corrientes]
    const property universidad

    method honorariosPorHora() {
        return 3000
    }

    method provinciasHabilitadas() {
        return provinciasHabilitadas
    }
}

class ProfesionalesLibres {
    const property honorariosPorHora
    const property provinciasHabilitadas
    const property universidad
}