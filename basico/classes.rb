# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque no Ruby tudo são objetos

# Classe é uma forma de organizar ações e atributos para um determinado objeto do mundo real

# Classe possu atributos e métodos, ou seja, características e ações

# Características (Nome, Marca, Modelo, Cor, Quantidade de Portas, etc...)
# Ações (Ligar, Businar, Parar, etc...)

class Carro
    attr_accessor :nome

    def ligar
        puts 'O carro está ligado.'
    end
end

fusca = Carro.new
fusca.nome = 'Fusca'

puts fusca.nome
fusca.ligar