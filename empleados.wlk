object galvan {
  var property  sueldo = 0
  var jefe = null  
  var property deuda = 0
  var property dinero =  0
  method pagarSueldo() {
    sueldo = 0
    sueldo = sueldo + 15000
  }
  method jefe(_jefe) {
    jefe= _jefe
  }
  method nuevoSueldo(_sueldo) {
    sueldo= _sueldo
  }
   method sueldo(){
    return sueldo
  }
  method cobrar() {
    if (sueldo > deuda ){
      dinero = sueldo - deuda 
      deuda = 0
    }
    else {
      deuda = deuda - sueldo 
    }
  }
  method gastar(dineroGastado){
    if (dineroGastado > dinero){
        deuda = deuda + (dineroGastado - dinero)
        dinero = 0
    } else {
      dinero = dinero - dineroGastado
    }
  }
  }
    
  


object baigorria {
  var sueldo = 0
  var empanadasVendidas= 0
  var jefe = null
  var totalCobrado= 0
  const precioEmpanda = 15
  method venta(totalVendidas) {
    empanadasVendidas = empanadasVendidas + totalVendidas
  } 
  method pagarSueldo() {
    sueldo = empanadasVendidas * precioEmpanda
  }
  method jefe(_jefe) {
    jefe= _jefe
  }
  method sueldo(){
    return sueldo
  }
  method cobrar () {
    totalCobrado = totalCobrado + sueldo 
    empanadasVendidas = 0
   }
   method totalCobrado() {
     return totalCobrado
   }
}

object gimenez {
  var fondoParaSueldos = 300000 
  var empleado = null 
  method empleado(_empleado) {
    empleado = _empleado
  }
  method pagarSueldo() {
    self.validarFondoSuficiente()
    empleado.pagarSueldo()
    fondoParaSueldos = fondoParaSueldos - empleado.sueldo()
    empleado.cobrar()
  }
  method validarFondoSuficiente() {
    if (fondoParaSueldos < empleado.sueldo()) {
      self.error ("Fondo insuficiente para pagar"  + empleado.sueldo())
    }
  }
  method fondoActual() {
    return fondoParaSueldos
  }
  method nuevoSueldo(sueldo){
    empleado.nuevoSueldo(sueldo)
  }
}