Feature: Editar minha conta

@editar_conta
Scenario: Editar usuário - minha conta
    Given o usuário está logado no sistema
    And acessou a conta de usuário 
    When editar o nome verdadeiro para 'Glaucinha Duarte'
    And atualizar usuário
    Then será exibida a seguinte mensagem 'Nome verdadeiro atualizado com sucesso'