#.include?(value) => devuelve true or false
#.last => devuelve el último objeto en el Range
#.max => devuelve el valor máximo en el Range
#.min => devuelve el valor mínimo en el Range

num = 1..10
puts "El range es: #{num}"
puts "El 5 está incluido en range: #{num.include?(5)}"
puts "El último elemento de range es: #{num.last}" 
puts "El minimo de range es #{num.min} y el maximo es #{num.max}"
print "Elementos >5 dentro de range: #{num.reject {|i| i <= 5}}"
puts "\n\n"

letras = "a".."g"
puts "El range es: #{letras}"
puts "La 'b' está incluido en range: #{letras.include?("b")}"
puts "El último elemento de range es: '#{letras.last}'" 
puts "El minimo de range es '#{letras.min}' y el maximo es '#{letras.max}'"
print "Elementos ubicados despues de 'd' dentro de range: #{letras.reject {|s| s <= "d"}}"
puts "\n\n"