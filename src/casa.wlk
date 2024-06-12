class Casa {
	const property habitaciones = []
	method habitacionesOcupadas() = habitaciones.filter({h => not h.estaVacia()})
	method responsables() = self.habitacionesOcupadas().map({h => h.ocupanteMasViejo()})
}
