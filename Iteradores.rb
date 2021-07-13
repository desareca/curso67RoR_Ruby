# .any? { |obj| block } => true or false
puts "-----------------------------------------------------------------------"
puts ".any?"
puts "-----------------------------------------------------------------------"

puts "['ant', 'bear', 'cat'].length >= 3, resp: #{["ant", "bear", "cat"].any? { |word| word.length >= 3 }}"
puts "['ant', 'bear', 'cat'].length >= 4, resp: #{["ant", "bear", "cat"].any? { |word| word.length >= 4 }}"
puts "['ant', 'bear', 'cat'].length >= 5, resp: #{["ant", "bear", "cat"].any? { |word| word.length >= 5 }} \n\n"

# .each => invoca el bloque una vez para cada elemento en ruby self, enviándo este elemento como parámetro al bloque.
puts "-----------------------------------------------------------------------"
puts ".each"
puts "-----------------------------------------------------------------------"

puts 'Probando con un array de strings ["ant", "bear", "cat"].each { |word| print word, "--" }:'
["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--
puts "\n\n"

puts 'Probando con un array de numeros [1, 2, 3].each { |n| puts "Numero es: #{n}" }:'
[1, 2, 3].each { |n| puts "Numero es: #{n}" }
puts "\n"

puts 'Probando con un objeto {a: 1, b: 2, c:3, d:4, e:5}:'
obj = {a: 1, b: 2, c:3, d:4, e:5}
obj.each { |key, value| puts "key: #{key}, value: #{value}" }
puts "\n"

puts 'Probando con un condicional (i==3):'
(1..6).to_a.each do |i|
    break if i == 3
    puts i
  end
puts "\n"


# .collect { |obj| block } => devuelve un nuevo arreglo con los resultados después de haber ejecutado el bloque una vez para cada elemento en enum
puts "-----------------------------------------------------------------------"
puts ".collect"
puts "-----------------------------------------------------------------------"

puts 'Numeros del 1 - 4 al cuadrado - (1..4).collect { |i| i*i } :'
(1..4).collect { |i| puts i*i } # => [1, 4, 9, 16]
puts "\n"

puts 'Array de cat de tamaño 4 - puts (1..4).collect { "cat" }:'
puts (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]
puts "\n"

puts 'Agregar texto a cada elemento - [ "a", "b", "c", "d" ].collect { |x| x + "!" }:'
a = [ "a", "b", "c", "d" ]
a.collect { |x| puts x + "!" }         #=> ["a!", "b!", "c!", "d!"]
puts "\n"

print 'Un collect incluyendo el indice - a.map.with_index { |x, i| x * i }:'
a.map.with_index { |x, i| puts x * i } #=> ["", "b", "cc", "ddd"]
puts "\n"

# .detect/.find => devuelve el primer valor para el que el bloque sea verdadero.
puts "-----------------------------------------------------------------------"
puts ".detect/.find"
puts "-----------------------------------------------------------------------"

puts 'El primer multiplo de 5 y 7 entre 1 y 10 - puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 }:'
puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
puts 'El primer multiplo de 5 y 7 entre 1 y 100 - puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }:'
puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
puts "\n"

# .find_all { |obj| block } ó .select { |obj| block } => devuelve un arreglo que contiene los elementos de enum para los que el bloque sea verdadero.
puts "-----------------------------------------------------------------------"
puts ".find_all"
puts "-----------------------------------------------------------------------"

puts 'Todos los multiplos de 3 entre 1 y 10 - puts (1..10).find_all { |i| i % 3 == 0 }:'
puts (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]
puts "\n"

# .reject { |obj| block } => lo opuesto de find_all
puts "-----------------------------------------------------------------------"
puts ".reject"
puts "-----------------------------------------------------------------------"

puts 'Todos los multiplos distintos de 3 entre 1 y 10 - puts (1..10).reject { |i| i % 3 == 0 }:'
puts (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]
puts "\n"


# .upto(limit) => recorre el bloque hasta alcanzar el número límite
puts "-----------------------------------------------------------------------"
puts ".upto(limit)"
puts "-----------------------------------------------------------------------"

puts 'recorre desde 5 a 10 - puts 5.upto(10) { |i| print i, " " }:'
puts 5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10
puts "\n"

puts 'recorre desde "a" a "e" - puts "a".upto("e") { |i| print i, " " }:'
puts 'a'.upto('e') { |i| print i, " " } # => a b c d e a
puts "\n"

puts 'recorre desde "a" a "e" - puts "a".upto("e", "e") { |i| print i, " " }:'
puts 'a'.upto('e','e') { |i| print i, " " } # => a b c d e
