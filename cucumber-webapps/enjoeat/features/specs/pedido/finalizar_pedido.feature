#language:pt 

@green_food
Funcionalidade: Finalizar Pedido
    Para que eu possa receber o pedido no meu endereço
    Sendo um usuário que fechou o carrinho com itens
    Posso finalizar o meu pedido

    #BDD (Desenvolvimento guiado por comportamento) => Voltado para o negócio
    #BDT (Teste guiado por comportamento)

    #sai do modelo tradicional, para o modelo que tem valor ao negócio
    #deixar de somente achar bugs, para a ser estratégico

    # Cenário: Finalizar pedido com Cartão Refeição
    
    #     Dado que eu fechei o meu carrinho 
    #     E preencho o campo nome com "Daniela"
    #     E preencho o campo email com "daniela@qa.io"
    #     E preencho o campo confirmação de email com "daniela@qa.io"
    #     E preencho a rua com "Avenida Paulista"
    #     E preencho o número da rua com "1000"
    #     E preencho o campo complemento com "17 andar"
    #     E clico na forma de pagamento "Cartão Refeição"
    #     Quando eu clico em "Finalizar Pedido"
    #     Então devo ver uma mensagem de sucesso 

    @smoke    
    Cenário: Finalizar pedido com Cartão Refeição

        Dado que eu fechei o pedido com os itens:
            | quantidade | nome                | descrição                                | subtotal |
            | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso.        | R$ 21,00 |
        E informei os meus dados de entrega
            | nome        | Daniela          |
            | email       | daniela@qa.io    |
            | rua         | Avenida Paulista |
            | numero      | 1000             |
            | complemento | 17 andar         |
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a seguinte mensagem: 
            """"
            Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
            """" 