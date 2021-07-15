require_relative 'mamifero'

class Leon < Mamifero
    def volar(n=1)
        @salud -= 10*n
        self
    end
    def atacar_ciudad(n=1)
        @salud -= 50*n
        self
    end
    def comer_humanos(n=1)
        @salud +=20*n
        self
    end
    def mostrar_salud
        print "Este es un león: "
        super
    end

end

leon = Leon.new(170)
leon.atacar_ciudad(3).comer_humanos(2).volar(2).mostrar_salud # 170 - 3*50 + 2*20 - 2*10 = 40