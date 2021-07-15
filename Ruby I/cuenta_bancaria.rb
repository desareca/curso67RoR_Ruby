class CuentaBancaria
    # Inicializa cuenta
    @@id_ctas = 1
    def initialize(c_a=0,c_c=0)
        if (c_a + c_c)>0
            @id = @@id_ctas
            @c_ahorro = c_a
            @c_corriente = c_c
            @tasa = 0.01
            @s_ahorro = 0
            @s_corriente = 0        
            @@id_ctas += 1
            self
        else
            puts "Ingrese un tipo de cuenta"
        end
        self
    end
    # Muestra saldo cuenta corriente
    def mostrar_saldo_cc
        if @c_corriente>0
            puts "El saldo de tu cuenta corriente es: $#{@s_corriente}"
        else
            puts "No tienes cuenta corriente"
        end
        self
    end
    # Muestra saldo cuenta de ahorro
    def mostrar_saldo_ca
        if @c_ahorro>0
            puts "El saldo de tu cuenta de ahorro es: $#{@s_ahorro}"
        else
            puts "No tienes cuenta de ahorro"
        end
        self
    end
    # Deposito
    def deposito(s=0, cta = "ahorro")
        if cta=="ahorro"
            if @c_ahorro>0
                @s_ahorro += s
            else
                puts "No tienes cuenta de ahorro"
            end    
        elsif cta == "corriente"
            if @c_corriente>0
                @s_corriente += s
            else
                puts "No tienes cuenta corriente"
            end    
        end
        self
    end
    # Retiro
    def retiro(s=0, cta = "ahorro")
        if cta=="ahorro"
            if @c_ahorro>0
                if @s_ahorro>s
                    @s_ahorro -= s
                else
                    puts "No tienes saldo en tu cuenta de ahorro"
                end
            else
                puts "No tienes cuenta de ahorro"
            end    
        elsif cta == "corriente"
            if @c_corriente>0
                if @s_corriente>s
                    @s_corriente -= s
                else
                    puts "No tienes saldo en tu cuenta corriente"
                end
            else
                puts "No tienes cuenta corriente"
            end    
        end
        self
    end
    # Mostrar saldo total
    def saldo_total
        puts "Tu saldo total es: #{@s_ahorro + @s_corriente}"
        self
    end
    # Mostrar total cuentas
    def cuenta_total
        puts "Tienes #{@c_ahorro + @c_corriente} cuentas en el banco"
        self
    end
    # Informacion completa de las cuenta
    def informacion_cuenta
        puts "---------------------------------"
        puts "N° cuenta: #{@id}"
        puts "Saldo total: #{@s_corriente + @s_ahorro}"
        puts "Saldo cuenta de ahorro: #{@s_ahorro}"
        puts "Saldo cuenta corriente: #{@s_corriente}"
        puts "Tasa de interes: #{@tasa}"
        puts "---------------------------------"
        self
    end
end

# Asumo que quien inicializa la cuenta no es el usuario, por eso se pueden elegir entre tipos de cuentas.

cta1 = CuentaBancaria.new(0,1)
puts cta1.inspect
cta1.mostrar_saldo_ca.mostrar_saldo_cc
cta1.deposito(30,"corriente").deposito(50,"ahorro").mostrar_saldo_ca.mostrar_saldo_cc
cta1.retiro(10,"corriente").retiro(15,"ahorro").mostrar_saldo_ca.mostrar_saldo_cc
cta1.saldo_total.cuenta_total.informacion_cuenta

cta2 = CuentaBancaria.new(1,0)
puts cta2.inspect
cta2.mostrar_saldo_ca.mostrar_saldo_cc
cta2.deposito(30,"corriente").deposito(50,"ahorro").mostrar_saldo_ca.mostrar_saldo_cc
cta2.retiro(10,"corriente").retiro(15,"ahorro").mostrar_saldo_ca.mostrar_saldo_cc
cta2.saldo_total.cuenta_total.informacion_cuenta

cta3 = CuentaBancaria.new(1,1)
puts cta3.inspect
cta3.mostrar_saldo_ca.mostrar_saldo_cc
cta3.deposito(30,"corriente").deposito(50,"ahorro").mostrar_saldo_ca.mostrar_saldo_cc
cta3.retiro(10,"corriente").retiro(15,"ahorro").mostrar_saldo_ca.mostrar_saldo_cc
cta3.saldo_total.cuenta_total.informacion_cuenta