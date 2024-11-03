
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

object galvan {
    
    var property sueldo = 15000 

    method cobrar(dinero) {

    }

}

object baigorria {

    var sueldo = 0 
    var vendidas = 0
    var cobrado = 0
    
    method vender(empanadasVendidas) {
        sueldo += empanadasVendidas * 15
        vendidas += empanadasVendidas

    }

    method informarVendidas() {
        return vendidas
    }

    method sueldo() {
        return sueldo
    }

    method totalCobrado() {
        return cobrado
    }

    method cobrar(dinero) {
        cobrado += sueldo
        sueldo = 0
    }


}