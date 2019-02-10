Feature: Cadastrar usuário

    @usuario
    Scenario Outline: Cadastrar usuário para acessar o mantis
        Given o usuário está logado no sistema
        And acessou o gerenciamento de usuários
        When criar nova conta
        And preencher os campos obrigatórios "<nomeUsuario>", "<nomeVerdadeiro>", "<email>" e "<nivelAcesso>"
        And criar usuário
        Then será exibida a mensagem com "<nomeUsuario>" e "<nivelAcesso>"

        Examples:
            | nomeUsuario | nomeVerdadeiro | email            | nivelAcesso   |
            | user01      | user01         | user01@email.com | visualizador  |
            | user02      | user02         | user02@email.com | relator       |
            | user03      | user03         | user03@email.com | desenvolvedor |
            | user04      | user04         | user04@email.com | gerente       |