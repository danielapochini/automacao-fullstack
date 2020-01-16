#language: pt

Funcionalidade: Informações Adicionais
    Para que eu possa ver todas as informações
    Sendo um usuário que escolheu um restaurante
    Posso ver a categoria, descrição e horários de funcionamento

    @infos
    Cenario: Detalhes do restaurante

        Dado que acesso a lista de restaurantes
        Quando eu escolho o restaurante "Burger House"
        Então eu vejo as seguintes informacoes adicionais:
            | Categoria | Hamburgues                               |
            | Descrição | 40 anos se especializando em trash food. |
            | Horários  | Funciona todos os dias, de 10h às 22h    |