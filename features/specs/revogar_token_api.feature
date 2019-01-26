Feature: Revogar token API

@revogar_token
Scenario: Revogar token API
    Given o usuário está logado no sistema
    And acessou a lista de tokens API
    When revogar o token 'teste'
    Then o sistema exibe uma mensagem informando que o token 'teste' foi revogado