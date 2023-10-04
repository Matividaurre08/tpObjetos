class Propiedad{
    var property duenio = banco
    var precioCompraInicial

    method rentaPara(jugadorQueCayo) {
        return self.valorDeRenta(jugadorQueCayo)
    }

    method valorDeRenta()
    method sosEmpresa()

    method paso(unJugador){    
    }

    method cayo(unJugador){
        if(duenio == banco){
            banco.decirA(unJugador, comprarA(self))
            banco.ofrecerPropiedadA(unJugador, self)
        } else{
            duenio.decirA(unJugador, pagarA(self), rentaPara(unJugador))
            duenio.cobrarA(unJugador, rentaPara(unJugador))
        }
    }
    decirA(unJugador, unaFuncion){
        
    }

object premioGanadero {
    method cayo(unJugador){ 
        unJugador.cobrar(2500)
    }
}

object salida {
    method cayo(unJugador) {}
}



class Campo inherits Propiedad {
    var property rentaFija
    var property estancias
    // var property duenio = banco
    const provincia
    

    method construirEstancia(){
        if(provincia.sePuedeConstruir(self)){
            estancias++
        }
    }

    method sosEmpresa() = return false

    method valorDeRenta() {
        return (2**estancias) * rentaFija
    }
    
}

class Empresa {
    method sosEmpresa() = return true

    method valorDeRenta(jugadorQueCayo){
        return duenio.cantidadEmpresas() * jugadorQueCayo.tirarDados() * 30000
    }
    

}


