import cosas.* 
import CuentaBancaria.*

object casaDePepeYJulian {
	var cosas = []
	var property cuentaQueEstaUsando
	
	method comprar(cosa) { 
		cosas.add(cosa)
		self.gastar(cosa.precio())
	} //metodo que hace
	method cantidadDeCosasCompradas() { return cosas.size() } //metodo que devuelve un numero
	method tieneComida() { return cosas.any({cosa => cosa.esComida()}) }//metodo que devuelve un booleano
	method vieneDeEquiparse() { 
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}//metodo que devuelve un booleano
	method esDerrochona() { return cosas.sum({ cosa => cosa.precio()}) >= 9000 } //devuelve un booleano
	method compraMasCara() { return cosas.max({ cosa => cosa.precio()}) } //devuelve un objeto
	method electrodomesticosComprados() { return cosas.filter({ cosa => cosa.esElectrodomestico() }) } 
	method malaEpoca() { return cosas.all({ cosa => cosa.esComida() }) }
	method queFaltaComprar(lista) {
		return lista.filter ( { quiero => not cosas.contains(quiero) } )
	} //recibe una lista de cosas y devuelve las cosas de esa lista que aún no se han comprado.
	method faltaComida() {  }//indica si se han comprado menos de 2 cosas que son comida.
	method gastoEnComida() {
		var comida = cosas.filter({ comida => comida.esComida() })
		
		return comida.sum({ cosa => cosa.precio() })
	}
	method gastoEnComida2() {
		return cosas
			.filter({ cosa => cosa.esComida() })
			.sum({ cosa => cosa.precio() })
	}
	
	method comidaComprada() = cosas.filter({ cosa => cosa.esComida() })
	method gastoEnComida_3() {
		return self.comidaComprada().sum({ cosa => cosa.precio() })
	}
	method primerComidaComprada() {
		return self.comidaComprada().first()
	}
	
	
	method nivelEnAumento() {
		var ultimaCosa = cosas.last()
		var primerCosa = cosas.first()
		
	 	return ultimaCosa.precio() >= primerCosa.precio() * 2
	}
	method primeraComidaComprada() {
		var comidas = cosas.filter({ comida => comida.esComida() })
		
		return comidas.first()
	}
	
	method hayElectrodomesticosBaratos() {
		var electrodomesticos = cosas.filter({ electro => electro.esElectrodomestico() })
		
		return electrodomesticos.any({ cosa => cosa.precio() < 3000})
	}
	method preciosDeElectrodomesticos() {
		var electrodomesticos = cosas.filter({ electro => electro.esElectrodomestico() })
		
		return electrodomesticos.map({ electrodo => electrodo.precio() })
	}
	method electrodomesticosComprado() = cosas.filter({ cosa => cosa.esElectrodomestico() }) //con el igual me ahorro el return, solo se puede usar si return y si es sola linea
	method gastar(importe) { cuentaQueEstaUsando.extraer(importe) }
	method dineroDisponible() { return cuentaQueEstaUsando.saldo() }//ATRIBUTO = VARIABLE
}

