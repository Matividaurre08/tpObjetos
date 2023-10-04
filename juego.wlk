class Juego {
  const property jugadores = []
  var property estaTerminado = false
  
  method empezar() {
    if (not self.estaTerminado()) {
      jugadores.forEach { jugador => self.queJuegue(jugador) }
    }
  }
  
  method queJuegue(unJugador) {
  	// TODO: Hacer

  }
}
