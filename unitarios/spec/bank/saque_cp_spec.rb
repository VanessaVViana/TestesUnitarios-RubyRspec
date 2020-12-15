require_relative '../../app/bank'

describe ContaPoupanca do

    describe 'Saque' do
        context 'Quando o valor é positivo' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@cp.saldo).to eql 798.00
            end
        end

        context 'Quando não tenho saldo' do
            before(:all) do
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(100.00)
            end
            it 'sistema exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'então meu saldo permanece' do
                expect(@cp.saldo).to eql 0.00
            end

        end

        context 'Tenho saldo mas não o suficiente' do
            before(:all) do
                @cp = ContaPoupanca.new(500.00)
                @cp.saca(501.00)
            end
            it 'sistema exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'então meu saldo permanece' do
                expect(@cp.saldo).to eql 500.00
            end

        end
        
        context 'Limite por Saque :(' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(701.00)
            end
            it 'sistema exibe mensagem' do
                expect(@cp.mensagem).to eql 'Limite máximo por saque é de R$ 500'
            end
            it 'então meu saldo permanece' do
                expect(@cp.saldo).to eql 1000.00
            end

        end

    end

end
