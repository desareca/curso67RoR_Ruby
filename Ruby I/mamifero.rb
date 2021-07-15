class Mamifero
    def initialize(animal="animal", salud=150)
        @salud = salud
        @animal = animal
    end
    def mostrar_salud
        puts "La salud del #{@animal} es: #{@salud}"
    end
end