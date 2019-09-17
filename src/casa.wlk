import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) { cosas.add(cosa) } //metodo que hace
	method cantidadDeCosasCompradas() { return cosas.size() } //metodo que devuelve un numero
	method tieneComida() { return cosas.any({cosa => cosa.esComida()}) }//metodo que devuelve un booleano
	method vieneDeEquiparse() { 
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}//metodo que devuelve un booleano
	method esDerrochona() { return cosas.sum(cosa => cosa.precio >= 9000) } //devuelve un booleano
	method compraMasCara() { return cosas.max({ cosa => cosa.precio()}) } //devuelve un objeto
	method electrodomesticosComprados() { return cosas.filter({ cosa => cosa.esElectrodomestico() }) } 
	method malaEpoca() { return cosas.all({ cosa => cosa.esComida() }) }
	method queFaltaComprar(lista) {
		return lista.filter ( { quiero => not cosas.contains(quiero) } )
	} //recibe una lista de cosas y devuelve las cosas de esa lista que aún no se han comprado.
	method faltaComida() { }//indica si se han comprado menos de 2 cosas que son comida.
	
}
