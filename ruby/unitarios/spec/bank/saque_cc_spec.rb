require_relative '../../app/bank'

describe ContaCorrente do
    
    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saque(200.00)
            end
            it 'então atualiza saldo' do
                expect(@cc.saldo).to eql 795.00
            end
        end
        
        context 'quando o saldo é zero' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saque(100.00)
            end  
            it 'vejo mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'meu saldo permanece' do
                expect(@cc.saldo). to eql 0.00                
            end
        end

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @cc = ContaCorrente.new(500.00)
                @cc.saque(501.00)
            end  
            it 'vejo mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end

            it 'meu saldo permanece conforme o valor inicial' do
                expect(@cc.saldo). to eql 500.00                
            end
        end

        context 'quando o valor do saque é maior que o limite da transação' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saque(701.00)  
            end
            it 'vejo mensagem' do
                expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end

            it 'meu saldo permanece conforme o valor inicial' do
                expect(@cc.saldo). to eql 1000.00                
            end
        end
    end
end