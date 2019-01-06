Feature: Excluir campo personalizado

    @excluir_campo
    Scenario: Excluir campo personalizado
        Given o usuário está logado no sistema
        And acessou o cadastro do campo personalizado 'campo02'
        When apagar campo personalizado
        And confirmar a exclusão
        Then o campo 'campo02' não será exibido na lista de campos personalizados