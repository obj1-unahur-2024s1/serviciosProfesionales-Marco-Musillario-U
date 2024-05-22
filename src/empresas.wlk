import profesionales.*

class Empresa{
	const property profesionales = #{}
	var property honorariosReferencia
	
	method agregarProfesional(unProfesional){
		profesionales.add(unProfesional)
	}
	
	method quitarProfesional(unProfesional){
		profesionales.remove(unProfesional)
	}
	
	method profesionalesFormadosEn(universidad){
		return profesionales.count({
			profesional => 
			profesional.universidad() == universidad
		})
	}
	
	method profesionalesCaros(){
		return profesionales.filter({
			profesional => 
			profesional.honorarios() > honorariosReferencia
		}).asSet()
	}
	
	method universidadesFormadoras(){
		return profesionales.map({
			profesional =>
			profesional.universidad()
		}).asSet()
	}
	
	method profesionalMasBarato(){
		return profesionales.min({
			profesional =>
			profesional.honorarios()
		})
	}
	
	method esDeGenteAcotada(){
		return not profesionales.any({
			profesional=>
			profesional.universidades().size() > 3
		})
	}
}
