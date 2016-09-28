# Ejercicio 4: Arrays y strings
# Dado el arreglo nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia","Ray"], 

require('pp')

n = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

# 1.1- extraer todos los elementos que excedan mas de 5 caractéres - (each)

empty = []	

n.each_with_index do |v,i| 
	empty.push(i) if v.length > 5
end

n.each_with_index do |v,i|
	n.delete_at(v.to_i)
end
pp "el array quedo como #{n}"

# 1.2- extraer todos los elementos que excedan mas de 5 caractéres - (select)
n = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
b = n.select { |e|  e.length < 6 }
pp b

# 1.3- extraer todos los elementos que excedan mas de 5 caractéres - (select)
n = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
b = n.reject { |e|  e.length > 5 }
pp b 

# 2 Utilizando .map crear una arreglo con los nombres en miníscula
n = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
b = n.map { |e| e.downcase}
pp b

# 3 Utilizando .select crear un arreglo con todos los nombres que empiezen con P
n = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
b = n.select { |e| e if e[0] == "P"}
pp b

# 4 Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
n = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
b = n.map { |e| e.length}
pp b
 