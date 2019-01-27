Feature: Desabilitar usuário

@desabilitar_usuario
Scenario: Desabilitar usuário cadastrado
    Given o usuário está logado no sistema
    And acessou gerenciamento de usuário
    When acessar o usuário 'tina'
    And desabilitar o usuário
    And atualizar usuário
    Then mensagem exibida 'Operação realizada com sucesso.'