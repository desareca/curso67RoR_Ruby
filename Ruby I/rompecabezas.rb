# Cree un arreglo con los siguientes valores 3,5,1,2,7,9,8,13,25,32. Muestre la suma de todos los números del arreglo. 
# Haz que la función también devuelva un arreglo que incluya solo los números que sean mayores a 10 
# (ejemplo: cuando pasas el arreglo anterior, debe devolver un arreglo con los valores de 13, 25, 32 - 
# Pista: utilice los métodos reject o find_all.
x = [3,5,1,2,7,9,8,13,25,32]

def sum_mayor10(arr, y=10)
    puts arr.sum
    return arr.find_all{|i| i>y}
end
puts "Ejercicio 1"
puts "#{sum_mayor10 x} \n\n"

# Cree un arreglo con los siguientes valores: John, KB, Oliver, Cory, Matthew, Christopher. Mezcla el arreglo y muestre el nombre 
# de cada persona. Haz que el programa devuelva un arreglo con los nombres que tengan una longitud mayor a 5 caracteres.
x = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

def name_shuffle(arr, y=5)
    puts arr.shuffle.to_s
    return arr.find_all{|i| i.length>y}
end
puts "Ejercicio 2"
puts "#{name_shuffle x} \n\n"

# Cree un arreglo que contenga las 26 letras del alfabeto (este arreglo tiene que tener 26 valores). Mézclalo y muestre la primera y la
# última letra del arreglo. Si la primera letra del arreglo es una vocal, haz que muestre un mensaje.
x = ('a'..'z').to_a

def alfabeto(arr, y=5)
    z = arr.shuffle
    puts "Primera letra: #{z.first}"
    puts "Ultima letra: #{z.last}"
    puts "\nEl primer elemento es una vocal" if z.first=~/a|e|i|o|u|A|E|I|O|U/
end

puts "Ejercicio 3"
puts "Largo del array: #{x.length}"
puts "#{alfabeto x} \n"

# Genere un arreglo con 10 números aleatorios entre 55 - 100.
x = 10.times.map { rand(55..100) } 
puts "Ejercicio 4"
puts "Array aleatorio: #{x}"
puts "\n"

# Genere un arreglo con 10 números aleatorios entre 55 - 100 y haz que esté en orden (el número más pequeño en la primera posición). 
# Muestre todos los números del arreglo. Por último, muestre el valor mínimo y el valor máximo del arreglo.
x = 10.times.map{rand(55..100)}.sort
puts "Ejercicio 5"
puts "Array aleatorio ordenado: #{x}"
puts "Minimo: #{x.min}"
puts "Maximo: #{x.max}"
puts "\n"

# Genere una cadena aleatoria de 5 caracteres. (Pista (65+rand(26)).chr devuelve un caracter aleatorio).
x = (1..5).collect{(65+rand(26)).chr}.to_s
puts "Ejercicio 6"
puts "Clase: #{x.class}"
puts "Cadena aleatoria: #{x}"
puts "\n"

# Genere un arreglo con 10 cadenas aleatorias de 5 caracteres cada una.
x = (1..10).collect{(1..5).collect{(65+rand(26)).chr}.to_s}
puts "Ejercicio 7"
puts "Clase: #{x.class}"
puts "Array de cadenas aleatorias: #{x}"
puts "\n"