# Desafíos
# Intente los siguientes métodos al menos una vez, pueden ser en un archivo separado de Ruby o en irb.

# -----------------------------------------------------------------------------------------------------
# .at
# -----------------------------------------------------------------------------------------------------
Array = (0..50).to_a 
puts ""
puts "-----------------------------------------------------------------------"
puts "Se crea un array con numeros del #{Array.at(0)} al #{Array.length - 1} para probar metodo at"
puts "El metodo at devuelve el valor de la posicion incicada de un array"
puts "-----------------------------------------------------------------------"
puts "Muestra posicion 0: #{Array.at(0)}"
puts "Muestra posicion 1: #{Array.at(1)}"
puts "Muestra posicion 2: #{Array.at(2)}"
puts "Muestra posicion 52: #{Array.at(52)}"
puts "Muestra posicion -2: #{Array.at(-2)}"

puts ""
# -----------------------------------------------------------------------------------------------------
# .fetch
# -----------------------------------------------------------------------------------------------------
puts "-----------------------------------------------------------------------"
puts "Se crea un array con numeros del #{Array.fetch(0)} al #{Array.length - 1} para probar metodo fetch"
puts "El metodo fetch es similar a at (no es igual)"
puts "-----------------------------------------------------------------------"
puts "Muestra posicion 0: #{Array.fetch(0, 'error')}"
puts "Muestra posicion 1: #{Array.fetch(1, 'error')}"
puts "Muestra posicion 2: #{Array.fetch(2, 'error')}"
puts "Muestra posicion 52: #{Array.fetch(52, 'error')}"

puts ""

# -----------------------------------------------------------------------------------------------------
# .delete
# -----------------------------------------------------------------------------------------------------

a = [ "a", "b", "b", "b", "c" , "c"]
puts "-----------------------------------------------------------------------"
print "Se crea el siguiente array #{a} para probar el metodo delete \n"
puts "El metodo borra todos los elementos iguales al indicado"
puts "-----------------------------------------------------------------------"
a.delete("b")
print "Al hacer 'a.delete('b')' resulta:  #{a}\n"
a.delete("z")
print "Al hacer 'a.delete('z')' resulta:  nil\n"
print "Al hacer 'a.delete('z') {'not found'}' resulta:  #{a.delete("z") { "not found" }}\n"

# -----------------------------------------------------------------------------------------------------
# .reverse
# -----------------------------------------------------------------------------------------------------
puts "\n----------------------------------------------------------------------"
print "El siguiente metodo invierte su nombre \nIngrese su nombre: \n"
puts "El metodo invierte los elementos"
puts "----------------------------------------------------------------------"

nombre = gets.chomp
puts "\nSu nombre invertido es #{nombre.reverse}\n"
a = [ "a", "b", "b", "b", "c" , "c"]

puts "\n----------------------------------------------------------------------"
print "#{a.reverse} es el resultado invertido del array #{a} \n"
puts "----------------------------------------------------------------------"

# -----------------------------------------------------------------------------------------------------
# .length
# -----------------------------------------------------------------------------------------------------
puts "\n----------------------------------------------------------------------"
puts "Los siguientes resultados muestran el metodo length (calcula el largo del string o array)"
puts "----------------------------------------------------------------------"
puts "El largo del array #{a} es #{a.length} \n"
puts "El largo del string 'length' es #{'length'.length} \n"

# -----------------------------------------------------------------------------------------------------
# .sort
# -----------------------------------------------------------------------------------------------------
puts "\n----------------------------------------------------------------------"
puts "Los siguientes resultados muestran el metodo sort (ordena)"
puts "----------------------------------------------------------------------"

arr = (0..5).to_a.shuffle
puts "array de numeros: #{arr}"
puts "array de numeros ordenado: #{arr.sort}"
puts "array de numeros ordenado de mayor a menor: #{arr.sort { |a, b| b <=> a }} \n\n"

arr = ('a'..'e').to_a.shuffle
puts "array de string: #{arr}"
puts "array de string ordenado: #{arr.sort}"
puts "array de string ordenado de mayor a menor: #{arr.sort { |a, b| b <=> a }} \n\n"

# -----------------------------------------------------------------------------------------------------
# .slice
# -----------------------------------------------------------------------------------------------------
puts "\n----------------------------------------------------------------------"
puts "Los siguientes resultados muestran el metodo slice (corta una fraccion de un array)"
puts "----------------------------------------------------------------------"

table = [2,4,6,8,10,12,14,16,18,20]

puts "Consider el siguiente array: #{table}"
puts "Si agregamos el primer parametro (posicion = 5), devuelve #{table.slice(5)}"
puts "Si agregamos dos parametros (posicion = 3, largo = 6), devuelve #{table.slice(3, 6)}  \n\n"

# -----------------------------------------------------------------------------------------------------
# .shuffle
# -----------------------------------------------------------------------------------------------------
puts "\n----------------------------------------------------------------------"
puts "Los siguientes resultados muestran el metodo shuffle (desordena)"
puts "----------------------------------------------------------------------"

arr = (0..10).to_a.shuffle
puts "array de numeros: #{arr}"
puts "array de numeros desordenado: #{arr.shuffle} \n\n"

arr = ('a'..'h').to_a
puts "array de string: #{arr}"
puts "array de string desordenado: #{arr.shuffle} \n\n"

# -----------------------------------------------------------------------------------------------------
# .join
# -----------------------------------------------------------------------------------------------------
puts "\n----------------------------------------------------------------------"
puts "Los siguientes resultados muestran el metodo join (une elementos de un array)"
puts "----------------------------------------------------------------------"

a = [18, 22, 33, nil, 5, 6]
puts "array de numeros: #{a}"
puts "join de array de numeros: #{a.join('-')} \n\n"

b = ["cow", nil, "dog"]
puts "array de string: #{b}"
puts "join de array de string: #{b.join('*')} \n\n"

# -----------------------------------------------------------------------------------------------------
# .insert
# -----------------------------------------------------------------------------------------------------
puts "\n----------------------------------------------------------------------"
puts "Los siguientes resultados muestran el metodo insert (agrega elemento)"
puts "----------------------------------------------------------------------"

a = ['a', 2, 'c', 4, 'd', 6]
puts "array de numeros: #{a}"
puts "agrega 'x' en posicion 1: #{a.insert(1,'x')}"
puts "agrega '5' en posicion -1: #{a.insert(-1,5)}"
puts "agrega 'f' en posicion 9: #{a.insert(9,'f')}"
puts "agrega '0' en posicion -2: #{a.insert(-2,0)} \n\n"

a = 'HolaMundo'
puts "textos: #{a}"
puts "agrega ' ' en posicion 4: #{a.insert(4,' ')}"
puts "agrega '!!!' en posicion final: #{a.insert(a.length,'!!!')} \n\n"

# -----------------------------------------------------------------------------------------------------
# .values_at
# -----------------------------------------------------------------------------------------------------
puts "\n----------------------------------------------------------------------"
puts "Los siguientes resultados muestran el metodo values_at (devuelve elementos)"
puts "----------------------------------------------------------------------"

a = %w{ a b c d e f }
puts "array: #{a}"
puts "a.values_at(1, 3, 5): #{a.values_at(1, 3, 5)}"
puts "a.values_at(1, 3, 5, 7): #{a.values_at(1, 3, 5, 7)}"
puts "a.values_at(-1, -2, -2, -7): #{a.values_at(-1, -2, -2, -7)}"
puts "a.values_at(4..6, 3...6): #{a.values_at(4..6, 3...6)} \n\n"
