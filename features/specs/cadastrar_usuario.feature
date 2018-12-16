Feature: Cadastrar usuário

    @usuario
    Scenario Outline: Cadastrar usuário para acessar o mantis
        Given o usuário administrador está logado no sistema
        And acessou o gerenciamento de usuários
        When criar nova conta
        And preencher os campos obrigatórios "<nomeUsuario>", "<nomeVerdadeiro>", "<email>" e "<nivelAcesso>"
        And criar usuário
        Then será exibida a mensagem com 'nomeUsuario' e 'nivelAcesso' 

        Examples:
            | nomeUsuario | nomeVerdadeiro | email              | nivelAcesso   |
            | teste201    | teste201       | teste201@email.com | visualizador  |
            | teste202    | teste202       | teste202@email.com | relator       |
            | teste203    | teste203       | teste203@email.com | atualizador   |
            | teste204    | teste204       | teste204@email.com | desenvolvedor |
            | teste205    | teste205       | teste205@email.com | gerente       |