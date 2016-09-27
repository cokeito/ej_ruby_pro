# Ejercicio 3
# Dado el array [1,2,3,9,1,4,5,2,3,6,6]
# 1.- Eliminar todos los números pares del arreglo.
# 2.- Obtener la suma de todos los elementos del arreglo.
# 	2.1 .- Utilizando .each
# 	2.2 .- Utilizando .inject
# 3.- Obtener el promedio.
# 4.- Incrementar todos los elementos en una unidad.
# 	4.1 .- Utilizando .each
#   4.2 .- Utilizando .map

require('pp')
# 1.- Eliminar todos los números pares del arreglo.

a = [1,2,3,9,1,4,5,2,3,6,6]

a.each_with_index do |v,i|
	a.delete_at(i) if v % 2 == 0 
end 

pp a

# 2.1- Obtener la suma de todos los elementos del arreglo. (each)
a = [1,2,3,9,1,4,5,2,3,6,6]
sum = 0;
a.each { |x| sum += x.to_i }
pp "2.1.- la suma es #{sum}"

# 2.2 map
a = [1,2,3,9,1,4,5,2,3,6,6]
sum = 0;
a.map {|x| sum += x.to_i }
pp "2.2.- la suma es #{sum}"

# 3.- promedio
a = [1,2,3,9,1,4,5,2,3,6,6]
avg = a.inject{ |sum, el| sum + el }.to_f / a.size
pp "el Promedio es: #{avg}"

# 4.1 Incrementar todos los elementos en una unidad. (each)
a = [1,2,3,9,1,4,5,2,3,6,6]
pp "s: #{a}"
sum = 0;
a.each_with_index { |x,i| a[i] = x+1 }
pp "f: #{a}"

# 4.2 Incrementar todos los elementos en una unidad. (map)
a = [1,2,3,9,1,4,5,2,3,6,6]
b = a.map {|x| x+1 }

pp "el array incrementado en una unidad es #{b}"


