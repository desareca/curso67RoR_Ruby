require_relative 'humano'

class Mago < Humano
    # Inicializa
    def initialize
        super
        @salud = 50
        @inteligencia = 25
    end
    # Autocuración
    def curar
        @salud += 10
        self
    end
    # Ataque
    def bola_de_fuego(obj)
        obj.salud -= 20
        self
    end
ends