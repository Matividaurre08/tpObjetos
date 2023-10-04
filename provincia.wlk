class Provincia(){
    const campos = #{}

    method coleccionDeDuenios(){
        return campos.map{ campo => campo.duenio() }.asSet()
    }

    method sePuedeConstruir(unCampo){
        return self.esMonopolio() and self.esConstruccionParejaPara(unCampo)
    }

    method esMonopolio(){
        return self.coleccionDeDuenios().size() == 1
    }   

    method esConstruccionParejaPara(unCampo){
        return campos.forEach { campo => campo.estancias() >= unCampo.estancias() } //se rompe el encapsulamiento???
    }
}