#language: pt

Funcionalidade: Remover do carrinho
    Para que eu possa manter meu carrinho apenas com itens desejados
    Sendo um cliente que desistiu de um ou mais produtos
    Posso remover itens do meu carrinho

    Cenário: Remover 1 item

        Dado que eu tenha os seguintes itens no carrinho:
            | nome                   | preço    |
            | Cup Cake               | R$ 8,70  |
            | Donut                  | R$ 2,50  |
            | Pão Artesanal Italiano | R$ 15,90 |
        Quando eu removo somente 1 item
        Então o valor total deve ser de "R$ 18,40"

    Cenário: Remover todos os itens

        Dado que eu tenha os seguintes itens no carrinho:
            | nome                   | preço    |
            | Cup Cake               | R$ 8,70  |
            | Donut                  | R$ 2,50  |
            | Pão Artesanal Italiano | R$ 15,90 |
        Quando eu removo todos os itens
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"
