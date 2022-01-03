#!/usr/local/bin/ruby

puts "Digite o numero limite"
numero = gets

# o gets insere um \n ao pressionar o Enter.
# para tirar o \n usamos o metodo chomp
# para converter para inteiro: to_i
numero = numero.chomp.to_i
puts ""

puts "Usando for loop"
for n in (1..numero)
	puts "#{n}"
end

puts "Usando while"
n = 0 # n continua existindo depois do for
while n < numero
	puts "#{n}"
	n += 1
end

puts "Usando until"
n = 0 # n continua existindo depois do for
until n == numero
	puts "#{n}"
	n += 1
end

