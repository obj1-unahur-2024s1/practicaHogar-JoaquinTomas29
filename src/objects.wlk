import personas.*
class Habitacion{
	const property ocupantes = []
	method estaVacia() = ocupantes.isEnmpty()
	method nivelDeConfort(unaPersona) = 10
	method puedeEntrar(unaPersona) = self.estaVacia()
	method ocupanteMasViejo() = ocupantes.max({p => p.edad()})
}


class UsoGeneral {	
	method puedeEntrar(unaPersona) = true
}

class Banio inherits Habitacion{
	override method nivelDeConfort(unaPersona) {return  super(unaPersona) + if(unaPersona.esMenorOIgual(4)) 2 else 4}
	method hayUnNinio(){ocupantes.any{o => o.esMenorOIgualDe(4)}}
	override method puedeEntrar(unaPersona) = super(unaPersona) or  self.hayUnNinio()
}


class Dormitorio inherits Habitacion{
	var property cantPersonas
	override method nivelDeConfort(unaPersona){return  super(unaPersona) + if (unaPersona.duermeEn(self))  10 / cantPersonas else 0}
}

class Cocina inherits Habitacion{
	const property metrosCuadrados
	override method nivelDeConfort(unaPersona){return super(unaPersona) + if(unaPersona.tieneHabilidadesDeCocina()) metrosCuadrados * configValor.porcentajeConfortCocina() else 0}
}
object configValor{
	var property porcentajeConfortCocina = 0.1
}