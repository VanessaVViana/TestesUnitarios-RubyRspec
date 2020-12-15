require_relative '../../app/bank'

describe ContaCorrente do

    describe 'Saque' do
        context 'Quando o valor é positivo' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@cc.saldo).to eql 795.00
            end
        end

        context 'Quando não tenho saldo' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saca(100.00)
            end
            it 'sistema exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'então meu saldo permanece' do
                expect(@cc.saldo).to eql 0.00
            end

        end

        context 'Tenho saldo mas não o suficiente' do
            before(:all) do
                @cc = ContaCorrente.new(500.00)
                @cc.saca(501.00)
            end
            it 'sistema exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'então meu saldo permanece' do
                expect(@cc.saldo).to eql 500.00
            end

        end
        
        context 'Limite por Saque :(' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(701.00)
            end
            it 'sistema exibe mensagem' do
                expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end
            it 'então meu saldo permanece' do
                expect(@cc.saldo).to eql 1000.00
            end

        end

    end

end
