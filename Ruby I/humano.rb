class Humano
    attr_accessor :fuerza, :inteligencia, :sigilo, :salud
    # inicializacion
    def initialize
        @fuerza = 3
        @inteligencia = 3
        @sigilo = 3
        @salud = 100
        self
    end
    # ataque
    def ataque(n)
        if n.class.ancestors[0]==Humano
            n.salud -= 10
        end
        self
    end
end

h1 = Humano.new
h2 = Humano.new
puts h1.inspect
puts h2.inspect
h1.ataque(h2) # humano_1 ataca a humano_2
puts "\n"
puts h1.inspect
puts h2.inspect
