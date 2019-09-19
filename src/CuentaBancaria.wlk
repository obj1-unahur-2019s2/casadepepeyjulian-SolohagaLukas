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
		else {dinero -= importe * 0.8}
	}
	method saldo() {
		return dinero
	}
}

object cuentaCombinada{
	var property cuentaPrimaria
	var property cuentaSecundaria
	var dinero = 0
	method depositar(importe){
		
	}
	method extraer(importe){
		
	}
	method saldo() {
		return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
	}
}