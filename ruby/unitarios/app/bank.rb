class Conta 
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo
    end

    def saque(valor, max, taxa)
        if (valor > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque :('
        elsif (valor > max)
            self.mensagem = 'Limite máximo por saque é de R$ ' + max.to_s
        else
        self.saldo -= valor + taxa
        end
    end
end

class ContaCorrente < Conta
    def saque(valor, max = 700, taxa = 5.00)
        super
    end

end

class ContaPoupanca < Conta 
    def saque(valor, max = 500, taxa = 2.00)
        super
    end

end