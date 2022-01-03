
=begin
	Explorando o conceito de attr_accesor(symbol)

	Ruby *não* permite sobrecarga de construtores
	Para valores opcionais, use um valor padrao
	@<var> cria uma variavel de instancia *privada*
	variaveis publicas sao criadas por meio de metodos publicos 
	com o mesmo nome da variavel (convencao Ruby)	
=end

class Animal

	# attr_accesor cria metodos set e get para cada uma das variaveies
	# de instancia
	# a assiantura de attr_accessor pede um ou mais simbolos que referenciem
	# as respectivas variaveis
	attr_accessor(:nome, :idade, :sexo, :especie, :raca)

	def initialize(nome, idade, sexo, especie, raca="")
		@nome = nome
		@idade = idade
		@sexo = sexo
		@raca = raca
		@especie = especie
	end

	def to_s
		"Animal #{@nome}: #{@idade} anos #{especie}"
	end
end
