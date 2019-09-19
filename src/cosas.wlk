object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

/*object kiloMila {
	var property precio = 260
}

object kiloDeMilasnesasLargo {
	var precio = 260
	
	method cambiarPrecio(otroPrecio){
		precio = otroPrecio
	}
	method cotizacion() {
		return precio
	}
}
object salsaTomate {
	var property precio = 90
}
object microondas {
	method precio() { return 4200 }
}
object kgCebollas {
	method precio() { return 25 }
}
object computadora {
	method precio() { return 500 * dolar.cotizacion() }
}
object dolar {
	method cotizacion() { return 58 }
}




	
	
	method esComida(){
		return regalo.all({ comida => comida.esComida() })
	}
	method esElectrodomestico() {
		return regalo.any({ electro => electro.esElectrodomestico() })
	}
	
}*/
object packComida {
	var plato 
	var aderezo
	method configurar(unPlato){
		plato = unPlato
	}
	method elegirAderezo(unAderezo){
		aderezo = unAderezo
	}
	method precio() {
		return plato.precio() + aderezo.precio()
	}
	 method esComida() { return true }
	 method esElectrodomestico() { return false }
}

object packRegalo {
	var componentes = [ ]
	
	method agregarRegalo(unRegalo) {
		componentes.add(unRegalo)
	}
	method precio() {
		return componentes.sum({ regalo => regalo.precio() }) * 0.8  
	}
	method esComida() {
		return componentes.all({ comida => comida.esComida() })
	}
	method esElectrodomestico() {
		return componentes.any({ electro => electro.esElectrodomestico() })
	}
}
	