# Ejercicio 2: Operaciones de push y pop en arrays

# Dado el array [1,2,3,9,1,4,5,2,3,6,6]
# 1.- Eliminar el último elemento
# 2.- Eliminar el primer elemento
# 3.- Eliminar el elemento que se encuentra en la posición media, si el arreglo tiene un número par de elementos entonces remover 
# 	  el que se encuentre en la mitad izquierda, ejemplo, en el arreglo [1,2,3,4] se removería el elemento 2
# 4.- Borrar el último elemento mientras ese número sea distinto a 1
# 5.- Utilizando un arrego vacío auxiliar y operaciones de push and pop invertir el orden de los elementos en el arreglo
require ('pp')


a = [1,2,3,9,1,4,5,2,3,6,6]

#1
a.pop
pp a

#2
a.shift
pp a

#3
a = [1,2,3,4,5,6,7,8] #,1,4,5,2,3,6,6,2]
pp "s: #{a}"
c = a.length
pp c

if c % 2 == 0 
	half = (c / 2) -1
else
	half = (c) / 2
end

a.delete_at(half)
pp "e: #{a}" 


#4 Borrar el último elemento mientras ese número sea distinto a 1
puts "4-------"
a = [1,2,3,9,1,4,5,2,3,6,6]
pp a
last = a[-1]
a.pop if last != 1
pp a

# 5.- Utilizando un arrego vacío auxiliar y operaciones de push and pop invertir el orden de los elementos en el arreglo
puts "5-------"
a = [1,2,3,9,1,4,5,2,3,6,6]
b = []

c = a.length
pp "------------------"

#forma coke
# a.each_with_index do |val, i|
# 	b.push( a[c-1] )
# 	c = c -1
# end

#forma gonzalo
(a.count).times { b.push(a.pop) }
pp b
