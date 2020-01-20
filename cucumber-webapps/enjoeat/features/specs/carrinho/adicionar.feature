#language: pt

@bread_bakery
Funcionalidade: Adicionar ao carrinho
    Para que eu possa finalizar uma compra
    Sendo um cliente que já decididu o que deseja comer
    Posso adicionar itens ao meu carrinho

    Cenário: Adicionar 1 unidade

        Dado que o produto desejado é "Cup Cake"
        E o valor do produto é de "R$ 8,70"
        Quando eu adicionar 1 unidade(s)
        Então deve ser adicionado 1 unidade(s) deste item
        E o valor total deve ser de "R$ 8,70"

    Cenário: Adicionar 2 unidades

        Dado que o produto desejado é "Donut"
        E o valor do produto é de "R$ 2,50"
        Quando eu adicionar 2 unidade(s)
        Então deve ser adicionado 2 unidade(s) deste item
        E o valor total deve ser de "R$ 5,00"

   @temp
    Cenário: Adicionar vários itens

        Dado que os produtos desejads são:
            | nome                   | preço    | quantidade   | 
            | Cup Cake               | R$ 8,70  | 1            |
            | Donut                  | R$ 2,50  | 2            |
            | Pão Artesanal Italiano | R$ 15,90 | 1            |
        Quando eu adiciono todos os itens
        Então vejo todos os itens no carrinho
        E o valor total deve ser de "R$ 29,60"
