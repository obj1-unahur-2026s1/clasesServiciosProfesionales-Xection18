class Persona {
    const property provincia

    method puedeSerAtentidaPor(profesional) {
        return profesional.provincias() == self.provincia()
    }
}

class Institucion {
    const property universidades = []

    method agregarUniversidad(universidad) {
        universidades.add(universidad)
    }

    method eliminarUniversidad(universidad) {
        universidades.remove(universidad)
    }

    method agregarUniversidades(listaDeUniversidades) {
        universidades.addAll(listaDeUniversidades)
    }

    method eliminarUniversidades(listaDeUniversidades) {
        universidades.removeAll(listaDeUniversidades)
    }

    method puedeSerAtentidaPor(profesional) {
        return universidades.any({universidad => profesional.universidad() == universidad})
    }

}

class Club {
    const property provincia

    method puedeSerAtentidaPor(profesional) {
        return profesional.provincias().any({provincia => provincia == self.provincia()})
    }
}