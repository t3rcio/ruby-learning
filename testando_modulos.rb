#!/usr/local/bin/ruby

=begin
	$LOADING_PATH eh um array
	"[] << " - adciona um item no fim do array
=end

# posso usar o $LOAD_PATH abaixo para 
# usar o <arquivo>.rb no require
$LOAD_PATH << "/home/tercio/Projects/Ruby/modulos"

# posso usar o path relativo do arquivo rb
# o retorno eh usado no require
modulos = File.expand_path("modulos/pessoa.rb")
modulo_animal = File.expand_path("modulos/animal.rb")

require modulos
require modulo_animal

pessoa = Pessoa.new("Fulano",21,"M")

# 'puts' chama o metodo to_s do objeto
# 'p' chama o metodo inspect do objeto
p pessoa

puts pessoa
puts pessoa.get_nome
puts pessoa.get_idade

puts "acessando propriedade publica 'nome' por metodo publico com mesmo nome"
puts "Pessoa.nome() ou Pessoa.nome"
puts pessoa.nome

puts "Alterando nome da pessoa"
nome = gets
nome = nome.chomp
pessoa.nome = nome
p pessoa

puts pessoa.cpf

puts "===" * 5

animal = Animal.new("julius", 1, "macho", "cachorro", "buldog frances")
p animal
puts Animal.instance_methods.sort