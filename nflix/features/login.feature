#language:pt

Funcionalidade: Login

    Para que eu possa gerenciar os filmes do catálogo Ninjaflix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @login_happy
    Cenário: Acesso
        Quando eu faço login com "tony@stark.com" e "pwd123"
        Então devo ser autenticado
        E devo ver "Tony Stark" na área logada

    Cenário: Senha inválida
        Quando​​​ eu faço login com "tony@stark.com"​ e "abc123"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"
    
    Cenário: Usuário não existe
        Quando​​ eu faço login com "404@yahoo.com" e "abc123"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"
    
    Cenário: Email não informado
        Quando​ eu faço login com "" e "abcxpto"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Opps. Cadê o email?"

    Cenário: Senha não informada
        Quando​ eu faço login com "teste@gmail.com" e ""
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Opps. Cadê a senha?"         