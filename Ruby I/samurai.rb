require_relative 'humano'

class Samurai < Humano
    @@n_samurai=0
    # Inicializa
    def initialize
        super
        @salud = 200
        @@n_samurai +=1
    end
    # Golpe mortal
    def golpe_mortal(obj)
        ataque(obj)
        @salud = 0
        self
    end
    # Meditar
    def meditar
        @salud = 200
        self
    end
    # Cuantos
    def self.cuantos
        puts "#{@@n_samurai}"
    end    
end
