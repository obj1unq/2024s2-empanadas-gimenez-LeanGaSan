
object gimenez {
    
    var fondo = 300000

    method pagarSueldo(empleado) {
        fondo -= empleado.sueldo()
        empleado.cobrar(empleado.sueldo())
    }

    method fondo() {
        return fondo
    }
}

/*
object galvanMio {
    
    // Dos atributos
    var property sueldo = 15000 
    var dinero = 0
    var deuda = 0

    method cobrar(monto) { 
        sueldo -= deuda
        //dinero += sueldo
        deuda = 0
    } 

    method deuda() {
        return deuda
    }

    method dinero() {
        return dinero
    }

    method gastar(cuanto) {
        if (dinero >= cuanto) dinero -= cuanto else deuda += cuanto
    }

}
*/ // Galvan del profe
object galvan {
    
    var property sueldo = 15000
    // Un solo atributo
    var balance = 0

    method cobrar(monto) {
        balance += monto
    }

    method gastar(monto) {
        balance -= monto
    }

    method deuda() {
        return balance.min(0) * (-1)
    }

    method dinero() {
        return balance.max(0)
    }

}

object baigorria {

    // ¿Empandas vendidas se calcula o se guarda?
    // Se guarda en un atributo
    var vendidas = 0
    var cobrado = 0
    
    // ¿Sueldo se calcula o se guarda?
    // Calcularl en un método de consulta
    //var sueldo = 0 

    method vender(empanadasVendidas) {
        vendidas += empanadasVendidas
    }

    method informarVendidas() {
        return vendidas
    }

    method sueldo() {
        return vendidas * 15
    }

    method totalCobrado() {
        return cobrado
    }

    method cobrar(monto) {
        cobrado += monto
        vendidas = 0
    }


}