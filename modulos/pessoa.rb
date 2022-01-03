
=begin
	Ruby *não* permite sobrecarga de construtores
	Para valores opcionais, use um valor padrao
	@<var> cria uma variavel de instancia *privada*
	variaveis publicas sao criadas por meio de metodos publicos 
	com o mesmo nome da variavel (convencao Ruby)
=end

class Pessoa

	def initialize(nome, idade, sexo, cpf="")
		@nome = nome
		@idade = idade
		@sexo = sexo
		@cpf = cpf
	end

	def get_nome
		# em Ruby o 'return' n eh obrigatorio. O valor da ultima instrucao é 
		# retornado por padrao
		@nome			  
	end

	# convencao Ruby: variavel publica eh acessivel mediante
	# metodo com o mesmo nome
	def nome
		@nome
	end

	def nome=(nome)
		# o uso de '=' eh uma convencao Ruby para melhorar a leitura
		# faz sentido: Ruby n permite sobrecarga de metodos
		# assim eu precisaria ter um metodo diferente de "nome" para setar a
		# variavel @nome do objeto
		# como alternativa usa-se 'nome='
		@nome = nome
	end

	def	get_idade
		return @idade # posso usar return, ou não
	end

	def cpf
		@cpf # sem return; ultima instrucao eh retornada por default
	end

	

	def to_s
		"Pessoa #{@nome}: #{@idade} anos"
	end
end
