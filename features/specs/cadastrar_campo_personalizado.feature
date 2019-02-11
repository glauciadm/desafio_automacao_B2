Feature: Cadastrar campo personalizado

    @campo
    Scenario Outline: Cadastrar campo personalizado
        Given o usuário está logado no sistema
        And acessou o gerenciamento de campos personalizados
        When inserir o nome do campo personalizado "<campoPersonalizado>"
        And cadastrar novo campo personalizado
        Then será mostrada a mensagem 'Operação realizada com sucesso.'

        Examples:
            | campoPersonalizado |
            | campo06            |
            | campo07            |
            | campo08            |
            | campo09            |