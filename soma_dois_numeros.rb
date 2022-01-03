#!/usr/local/bin/ruby

numero1 = 0
numero2 = 0

puts "Digite o primeiro numero"
numero1 = gets

# o gets insere um \n ao pressionar o Enter.
# para tirar o \n usamos o metodo chomp
# para converter para inteiro: to_i
numero1 = numero1.chomp.to_i
puts ""

puts "Digite o segundo numero"
numero2 = gets
numero2 = numero2.chomp.to_i

soma = numero1.+numero2
puts "Resultado = #{soma}"