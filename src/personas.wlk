class Persona {
	var edad = 4
	var property dormitorio
	method cumplirAnios() {edad += 1}
	method edad() = edad
	method duermeEn(unDormitorio) = dormitorio == unDormitorio
	method puedeEntrar(unaHabitacion) 
}
class Obsesivos inherits Persona{
	override method puedeEntrar(unaHabitacion) = unaHabitacion.ocupantes().size() < 2
}
class Golose inherits Persona{
	
}
class Sencillas inherits Persona{
	
}