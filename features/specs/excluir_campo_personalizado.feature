Feature: Excluir campo personalizado

    @excluir_campo
    Scenario: Excluir campo personalizado
        Given o usuário está logado no sistema
        And acessou o cadastro do campo personalizado 'campo03'
        When apagar campo personalizado
        And confirmar a exclusão do campo personalizado
        Then o campo 'campo03' não será exibido na lista de campos personalizados