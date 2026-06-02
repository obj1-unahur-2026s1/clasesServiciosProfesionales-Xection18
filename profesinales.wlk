import tiposDeProfesionales.*
class Profesional {
    const tipoDeProfesional
    const property universidad 

    method honorarios() {
        return tipoDeProfesional.honorariosPorHora()
    }

    method provincias() {
        return tipoDeProfesional.provinciasHabilitadas()
    }

}