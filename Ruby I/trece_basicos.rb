# -----------------------------------------------------------------------------------------------------
# Mostrar 1-255
# -----------------------------------------------------------------------------------------------------
# Escriba un programa que muestre todos los números del 1 al 255.
print (1..255).to_a
puts "\n\n"

# -----------------------------------------------------------------------------------------------------
# Mostrar números impares entre 1 y 255
# -----------------------------------------------------------------------------------------------------
# Escriba un programa que muestre todos los números impares del 1 al 255.
print (1..255).to_a.select {|i| i%2!=0}
puts "\n\n"

# -----------------------------------------------------------------------------------------------------
# Muestre la suma
# -----------------------------------------------------------------------------------------------------
# Escriba un programa que muestre los números del 0 al 255, pero esta vez, muestre también la suma de los números que se 
# han mostrado hasta el momento. (NO utilice un arreglo para este ejercicio)
(0..255).each { |i, suma| puts "elemento: #{i}, suma: #{(0..i).sum}" }
puts "\n"

# -----------------------------------------------------------------------------------------------------
# Recorriendo un arreglo
# -----------------------------------------------------------------------------------------------------
# Dado un arreglo X, digamos [1, 3, 5, 7, 9, 13], escriba un programa que recorra cada elemento del arreglo y muestre su valor. 
# Ser capaz de recorrer cada elemento de un arreglo es sumamente importante.
[1, 3, 5, 7, 9, 13].each{ |i| puts "elemento: #{i}" }
puts "\n"

# -----------------------------------------------------------------------------------------------------
# Encontrar el máximo
# -----------------------------------------------------------------------------------------------------
# Escriba un programa (un conjunto de instrucciones) que tome cualquier arreglo y muestre el valor máximo del arreglo.
# Tu programa debe funcionar también con arreglos que tengan todos los números negativos (ejemplo [-3, -5, -7]), o incluso
# una combinación con números positivos, negativos y cero.
nums = 10.times.map { rand(-100..100) } # genera 10 numeros aleatorios entre -100 y 100
puts "El maximo del array #{nums.to_s} es: #{nums.max}"
puts "\n"

# -----------------------------------------------------------------------------------------------------
# Promedio
# -----------------------------------------------------------------------------------------------------
# Escriba un programa que tome un arreglo y muestre el PROMEDIO de los valores del arreglo. Por ejemplo para el arreglo [2, 10, 3] 
# tu programa debe mostrar un promedio de 5. De nuevo, asegúrate de crear un caso base y escribe las instrucciones para 
# resolver este caso primero, luego ejecuta tus instrucciones para otros casos más complicados. Puedes utilizar la función
# length para esta actividad.
nums = 10.times.map { rand(-100..100) } # genera 10 numeros aleatorios entre -100 y 100
puts "El promedio del array #{nums.to_s} es: #{nums.sum/nums.length.to_f}"
puts "\n"

# -----------------------------------------------------------------------------------------------------
# Arreglo con números impares
# -----------------------------------------------------------------------------------------------------
# Escriba un programa que cree un arreglo "y" que contenga todos los números impares entre 1 y 255. Cuando el programa se complete,
# "y" debe tener los valores de [1, 3, 5, 7, ... 255].
y = (1..255).to_a.select{|i| i%2!=0}
puts "Numeros impares del 1 al 255: #{y.to_s}"
puts "\n"

# -----------------------------------------------------------------------------------------------------
# Mayor que Y
# -----------------------------------------------------------------------------------------------------
# Escriba un programa que tome un arreglo y devuelva la cantidad de números que son mayores a un valor dado Y. 
# Por ejemplo si el arreglo es [1, 3, 5, 7] y Y = 3, después de ejecutar tu programa debe mostrar 2 (debido a que 
# hay 2 valores en el arreglo que son mayores a 3).
x = 10.times.map { rand(-100..100) } # genera 10 numeros aleatorios entre -100 y 100
x = [1, 3, 5, 7]
y = 3
puts "Cantidad de numeros mayores a #{y} dentro del array #{x}: #{x.select{|i| i>y}.length}"
puts "\n"

# -----------------------------------------------------------------------------------------------------
# Elevar al cuadrado
# -----------------------------------------------------------------------------------------------------
# Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo (un conjunto e instrucciones) que multiplique cada valor en el 
# arreglo por si mismo. Cuando el programa termine, el arreglo x debe tener valores que han sido elevados al cuadrado, 
# es decir [1, 25, 100, 4].
x = 10.times.map { rand(-10..10) } # genera 10 numeros aleatorios entre -10 y 10
x = [1, 5, 10, -2]
puts "El cuadrado de cada elemento del array #{x}: #{x.collect!{|i| i*i}}"
puts "\n"

# -----------------------------------------------------------------------------------------------------
# Eliminar números negativos
# -----------------------------------------------------------------------------------------------------
# Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que reemplace cualquier número negativo con 0. Cuando el programa 
# termine, x no debe tener valores negativos, es decir [1, 5, 10, 0].
nums = 10.times.map { rand(-10..10) } # genera 10 numeros aleatorios entre -10 y 10
x = [1, 5, 10, -2]
puts "Elimina negativo del array #{x}: #{x.map! { |i| i < 0 ? 0 : i }}"
puts "\n"

# -----------------------------------------------------------------------------------------------------
# Max, Min, y Promedio
# -----------------------------------------------------------------------------------------------------
# Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que devuelva un hash con el valor máximo, el valor mínimo y
# el promedio de los valores en el arreglo.
x = [1, 5, 10, -2]

def max_min_prom arr
    {:max=>arr.max, :min=>arr.min, :prom=>arr.sum/arr.length.to_f}
end

puts "Calcula maximo, minimo y promedio de #{x}: #{max_min_prom x}"
puts "\n"

# -----------------------------------------------------------------------------------------------------
# Cambiar los valores en el arreglo
# -----------------------------------------------------------------------------------------------------
# Dado un arreglo x, cree un algoritmo que cambie cada número del arreglo por el número que hay en la siguiente posición. 
# Por ejemplo, dado el arreglo [1, 5, 10, 7, -2], cuando el programa termine, este arreglo debe ser [5, 10, 7, -2, 0].
x = [1, 5, 10, 7, -2]
puts "El arreglo #{x} modificado: #{x.slice(1,x.length).push(0).to_s}"
puts "\n"


# -----------------------------------------------------------------------------------------------------
# Números a cadenas
# -----------------------------------------------------------------------------------------------------
# Escriba un programa que tome un arreglo de números y reemplace cualquier número negativo con la palabra "Dojo".
# Por ejemplo, dado el arreglo x = [-1, -3, 2], después que el programa haya terminado, ese arreglo debe ser ['Dojo', 'Dojo', 2].
x = [-1, -3, 2]
puts "Modifica los negativos del array #{x}: #{x.map! { |i| i < 0 ? "Dojo" : i }}"
puts "\n"

