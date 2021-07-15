class Mamifero
    def respirar
      puts "Inhalar - Exhalar"
    end
    
    def comer
      puts "Yum yum yum"
    end
end
class Humano < Mamifero # Humano hereda de Mamifero
    def metodo_subclase
      respirar
      self
    end
    def otro_metodo
      self.comer
      self
    end
end
persona = Humano.new
persona.metodo_subclase
persona.otro_metodo
persona.metodo_subclase.otro_metodo
persona.otro_metodo.metodo_subclase




