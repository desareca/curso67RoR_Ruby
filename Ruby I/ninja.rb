require_relative 'humano'

class Ninja < Humano
    # Inicializa
    def initialize
        super
        @sigilo = 175
    end
    # Robo
    def robo(obj)
        ataque(obj)
        @salud += 10
        self
    end
    #huir
    def huir
        @salud -= 15
        self
    end
end
