class Casillero {
   const tipoCasillero
   
   method paso(unJugador){
        tipoCasillero.paso(unJugador)
   } // Pregunta si queda vacio

    method cayo(unJugador){    
        tipoCasillero.cayo(unJugador)
    }

}


object salida {
    method paso(unJugador){
        unJugador.cobrar(5000)
    }

    method cayo(unJugador){
    }
    
}

object premioGanadero {
    method paso(unJugador){}

    method cayo(unJugador){
        unJugador.cobrar(2500)
    }
}