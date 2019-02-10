Feature: Excluir usuário

    @excluir_user
    Scenario: Excluir cadastro de usuário
        Given o usuário está logado no sistema
        When gerenciar usuários
        And abrir o cadastro do usuário 'pedro'
        And apagar o usuário
        And confirmar a exclusão do usuário
        Then será exibida a mensagem 'Operação realizada com sucesso.'



