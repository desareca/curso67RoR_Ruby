class Fixnum
    def quien_soy
      puts self
    end
end
class String
    def quien_soy
      puts self
    end
end
4.quien_soy # => 4
15.quien_soy # => 15
"string".quien_soy # => "string"
"Hola Mundo".quien_soy # => "Hola Mundo"



class Mamifero
    def initialize
      puts "Estoy vivo"
      self
    end
    def respirar
      puts "Inhalar - Exhalar"
      self
    end
    
    def quien_soy
      puts self
      self
    end
end

puts "\n"
# mi_mamifero = Mamifero.new.quien_soy.respirar
mi_mamifero = Mamifero.new
mi_mamifero.quien_soy
mi_mamifero.quien_soy.respirar
mi_mamifero.respirar.quien_soy

