require_relative 'mamifero'

class Perro < Mamifero
    def acariaciar(n=1)
        @salud += 5*n
        self
    end
    def caminar(n=1)
        @salud -= n
        self
    end
    def correr(n=1)
        @salud -= 10*n
        self
    end

end

perro1 = Perro.new("perro") # perro1 inicializado en 150
perro2 = Perro.new("perro", 200) # perro2 inicializado en 200 (+50)
puts perro1.inspect
puts perro2.inspect
perro1.caminar.caminar.caminar.correr.correr.acariaciar.mostrar_salud # perro1 caminar x 3 + correr x 2 + acariciar x 1 = 132
perro2.caminar(3).correr(2).acariaciar(1).mostrar_salud # perro2 caminar x 3 + correr x 2 + acariciar x 1 = 182 (132 + 50)