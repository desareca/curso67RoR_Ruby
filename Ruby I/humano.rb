class Humano
    attr_accessor :fuerza, :inteligencia, :sigilo, :salud
    # inicializacion
    def initialize
        @fuerza = 3
        @inteligencia = 3
        @sigilo = 3
        @salud = 100
    end
    # ataque
    def ataque(obj)
        if obj.class.ancestors.include?(Humano)
            obj.salud -= 10
            true
        else
            false
        end
    end
end