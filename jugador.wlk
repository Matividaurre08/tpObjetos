import propiedad.*

class Jugador{ // banco entiende tirar dados_?
    var property dinero
    const propiedades = #{}
    
    method cobrar(unaCantidad){
        dinero+= unaCantidad
    }

    method pagarA(unJugador, unaCantidad){
        if (dinero < unaCantidad) {
            self.error("Dinero insuficiente")
        } else {
            dinero-= unaCantidad
            unJugador.cobrar(unaCantidad)
        }
    }

    method cantidadEmpresas() {
        return propiedades.filter{ propiedad => propiedad.esEmpresa() }.size() // Delegamos o asi ta bien. Repeticion de funcionamiento.
    } 

    method tirarDados() {
        return self.tirarDado() + self.tirarDado()
    }

    method tirarDado() {
        return (1.randomUpTo(7)).div(1) //hay otra forma?? roundUp??
    }
    
    method caerEnUnaPropiedad(propiedad) {
        
    }
}

object banco{
    const propiedades = #{}

    method cobrarA(unaCantidad){
        unJugador.pagarA(self, unaCantidad)
    }

    method pagarA(unJugador, unaCantidad){
        unJugador.cobrar(unaCantidad)
    }

    method cantidadEmpresas() {
        return propiedades.filter{ propiedad => propiedad.esEmpresa() }.size() // Delegamos o asi ta bien. Repeticion de funcionamiento.
    } 

    method tirarDados() { // polimorfismo? hacer clase abstracta?
        return 0
    }

    method tirarDado() {
        return 0 
}