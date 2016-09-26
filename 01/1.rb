#ejercicio 1 RB
#Dado el array [1,2,3,9,1,4,5,2,3,6,6]

# 1. Mostrar el primer elemento.
# 2. Mostrar el último elemento.
# 3. Mostrar todos los elementos
# 4. Mostrar todos los elementos junto con un índice
# 5. Mostrar todos los elementos que se encuentren en una posición par
# 6. Determinar si un elemento ingresando pertenece al array o no.
# 
# 
require('pp');

a = [1,2,3,9,1,4,5,2,3,6,6]

#1
pp "1.- el primer elemento es #{a[0]}"

#2
pp "2.- el último elemento es #{a[-1]}"

#3
a.each do |x|
	pp "3.- #{x} es un elemento del array"
end 

#4
a.each_with_index do |val, i|
	pp "4.- indice #{i} => #{val}"
end

#5
a.each_with_index do |val, i|

	pp "5.- indice #{i} => #{val}" if i % 2 == 0
end

#6
puts 'ingrese un numero'
v = gets.chomp

exist = (a.include? v.to_i) 
puts exist ? 'si existe' : 'no exist'