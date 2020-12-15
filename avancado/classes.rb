class Conta
    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
       # puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
       self.saldo += valor
        puts "Depositando a quantia de #{valor} reias na conta da #{self.nome}."
    end

end
    c = Conta.new('Vanessa')

    c.deposita(100.00)
    puts c.saldo

    c.deposita(10.00)
    puts c.saldo
    puts c.nome