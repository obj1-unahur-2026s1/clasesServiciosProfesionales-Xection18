import provincias.*
import asociacion.*
class ProfesionalesVinculadosAUnaUniversidad {
    const property universidad
    var property importeCobrado = 0

    method honorarios() {
        return universidad.honorariosRecomendados()
    }

    method provinciasHabilitadas() {
        return universidad.provincia().asList()
    }

    method cobrarImporte(importe) {
        universidad.importeRecaudado(universidad.importeRecaudado() + (importe/2))
        importeCobrado = importeCobrado + (importe/2)
        self.gastarImporte()
    }

    method gastarImporte() {
        importeCobrado = 0
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

    method cobrarImporte(importe) {
        self.darTodoElImporteALaAsociacion(importe, asociacionDeProfesionalesDelLitoral)
    }

    method darTodoElImporteALaAsociacion(importe, asociacionDeProfesionalesDelLitoral) {
        asociacionDeProfesionalesDelLitoral.recibirImporte(importe)
    }
}

class ProfesionalesLibres {
    const property honorarios
    const property provinciasHabilitadas
    const property universidad
    var property importeCobrado = 0

    method cobrarImporte(importe) {
       importeCobrado += importe
    }

    method pasarCantidadDeImporte(cantidad, profesional) {
        if (importeCobrado >= cantidad) {
            importeCobrado -= cantidad
            profesional.cobrarImporte(cantidad)
        }
        else {
            profesional.cobrarImporte(importeCobrado)
            importeCobrado = 0
        }
    }
}

