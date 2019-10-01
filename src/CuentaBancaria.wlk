object cuentaCorriente{
	var dinero = 0
	method depositar(importe){
		dinero += importe
	}
	method extraer(importe){
		dinero -= importe
	}
	method saldo() {
		return dinero
	}
}

object cuentaConGastos{
	var dinero = 0
	method depositar(importe){
		dinero += importe - 20
	}
	method extraer(importe){
		if (importe <= 1000) {dinero -= importe - 20 }
		else {dinero -= importe + importe / 50}
	}
	method saldo() {
		return dinero
	}
}

object cuentaCombinada{
	var property cuentaPrimaria
	var property cuentaSecundaria
	
	method depositar(importe){
		cuentaPrimaria += importe
	}
	method extraer(importe){
		if (cuentaPrimaria >= importe)
		{ cuentaPrimaria -= importe } 
		else { cuentaSecundaria -= importe }
	}
	method saldo() {
		return cuentaPrimaria + cuentaSecundaria
	}
}