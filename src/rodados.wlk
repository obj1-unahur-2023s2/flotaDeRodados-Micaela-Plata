class ChevroletCorsa {
	const color
	
	method capacidad() = 4
	
	method velocidadMaxima() = 150
	
	method peso() = 1300
	
	method color() = color
}

class RenaultKwid {
	var tieneTanqueAdicional 
	
	method tieneTanqueAdicional() {
		return tieneTanqueAdicional
	}
	
	method capacidad() = if (tieneTanqueAdicional) = 3 else 4
	
	method velocidadMaxima() = if (tieneTanqueAdicional) = 120 else 110
	
	method peso() = if (tieneTanqueAdicional) = 1200 else 1350
	
	method color() = Azul
}

object trafic {
	var interior
	var motor
	
	method capacidad() {
		return interior.capacidad()
	}
	
	method velocidadMaxima() {
		return motor.velocidadMaxima()
	} 
	
	method peso() = 4000 + interior.peso() + motor.peso()
	
	method color() = blanco
}	
	

object autosEspeciales {
	var capacidad
	var velocidadMax
	var peso
	var color
	
	method capacidad() = capacidad
	
	method velocidadMaxima() = velocidadMax
	
	method peso() = peso
	
	method color() = color
}


class Dependencia {
	const rodados = []
	
	method agregarAFlota(rodado) {
		rodados.add(rodado)
	}
	
	method quitarDeFlota(rodado){
		rodados.remove(rodado)
	}
	
	method pesoTotalFlota() {
		rodados.sum ({r => r.peso()})
	}
	
	method estaBienEquipada() {
		rodados.size
	}
	
	method capacidadTotalEnColor(color) 
		= rodados.filter (r=> r.color() == color)
}
