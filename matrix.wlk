object neo {
    var energia = 100
    method saltar() {
        energia = energia / 2 }
    method vitalidad() {
        energia = energia * 0.1}
    method esElElegido() {return true}

}

object morfeo {
    var vitalidad = 8
    var cansado = false
    method saltar() {
        vitalidad = (vitalidad -1).max(0)
        cansado = not cansado
    }
    method vitalidad() = vitalidad
    method esElElegido() {return false}
}

object trinity {
    method vitalidad() {return 0}
    method saltar() {}
    method esElElegido() {return false}
}

object nave {
    const pasajeros = []
    method agregarPasajeros(unPasajero) {
        pasajeros.add(unPasajero)
    }
    method cantidadPasajeros() {
        return pasajeros.size()
    }
    method pasajeroConMayorVitalidad() {
        pasajeros.max({ p => p.vitalida()})
    }
    method esEquilibrada() {
        pasajeros.map({p => p.vitalidad() * 2}).all(
            { v => v > self.pasajeroConMayorVitalidad().vitalidad()})
    }

    method estaElElegido() {
        pasajeros.any({p => p.esElElegido()})
    }

    method naveChoca() {
        pasajeros.clear()
    }

    method naveAcelera() {
        pasajeros.map({p => p.saltar()} )
    }
}






