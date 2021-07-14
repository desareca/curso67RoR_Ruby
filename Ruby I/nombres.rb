=begin
Cree un método Ruby que revise cada nombre en el arreglo de nombres y muestre algo como lo siguiente.

Tienes 5 nombres en el arreglo 'nombres'
El nombre es 'Michael Choi'
El nombre es 'John Doe'
El nombre es 'Jane Doe'
El nombre es 'James Smith'
El nombre es 'Jennifer Smith'
=end

a = {nombre: "Michael", apellido: "Choi"}
b = {nombre: "John", apellido: "Doe"}
c = {nombre: "Jane", apellido: "Doe"}
d = {nombre: "James", apellido: "Smith"}
e = {nombre: "Jennifer", apellido: "Smith"}
nombres = [a, b, c, d, e]

def imp_nombres x
    x.each{|name| puts "El nombre es '#{name[:nombre]} #{name[:apellido]}'"}
end

imp_nombres nombres


