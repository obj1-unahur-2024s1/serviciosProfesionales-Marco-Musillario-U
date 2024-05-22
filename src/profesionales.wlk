import universidades.*

class ProfesionalAsociado {
	const property universidad 	
	
	method honorarios() = universidad.honorariosRecomendados()
	
	method provincias() = #{universidad.provincia()}
}


class ProfesionalVinculado {
	const property universidad
	var property honorarios= 3000
	const property provincias = #{"Santa Fe", "Entre Rios", "Corrientes"}
}


class ProfesionalLibre {
	const property universidad
	const property provincias = #{} 
	
	method agregarProvincia(unaProvincia){
		provincias.add(unaProvincia)
	}
	
	method quitarProvincia(unaProvincia){
		provincias.remove(unaProvincia)
	}
}