
class Collection
	attr_accessor(:tipo, :items)

	def initialize(tipo)
		@tipo = tipo
		@items = []
	end

	def <<(item):
		@items << item
	end

	def to_s:
		"Collecao de #{@tipos}: #{@items}"
	end


