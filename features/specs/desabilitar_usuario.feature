Feature: Desabilitar usuário

@desabilitar_user
Scenario: Desabilitar usuário cadastrado
    Given o usuário está logado no sistema
    And acessou gerenciamento de usuário
    When acessar o usuário 'maria'
    And desabilitar o usuário
    And atualizar usuário
    Then mensagem exibida 'Operação realizada com sucesso.'