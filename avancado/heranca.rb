class Veiculo

    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} está pronto para iniciar o trajeto!"
    end

    def buzinar
        puts 'Beep! Beep!'
    end

end

class Carro < Veiculo
   
    def dirigir
        puts "#{nome} iniciando o trajeto."
    end
end

class Moto < Veiculo
    attr_accessor :nome, :marca, :modelo

    def pilotar
        puts "#{nome} iniciando o trajeto."
    end
end

fusca = Carro.new('Fusca', 'Volkswagen', 'SI')
fusca.ligar
fusca.buzinar

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar

fazer = Moto.new('Fazer', 'Mitsubishi', 'EVO')
fazer.ligar
lancer.buzinar