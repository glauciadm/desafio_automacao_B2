Feature: Cadastrar campo personalizado

    @campo
    Scenario Outline: Cadastrar campo personalizado
        Given o usuário está logado no sistema
        And acessou o gerenciamento de campos personalizados
        When inserir o nome do campo personalizado "<campo_personalizado>"
        And cadastrar novo campo personalizado
        Then será mostrada a mensagem 'Operação realizada com sucesso.'

        Examples:
            | campo_personalizado |
            | campo01             |
            | campo02             |
            | campo03             |
            | campo04             |