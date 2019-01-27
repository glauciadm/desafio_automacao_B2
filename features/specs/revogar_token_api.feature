Feature: Revogar token API

@revogar_token
Scenario: Revogar token API
    Given o usuário está logado no sistema
    And acessou a lista de tokens API
    When revogar o token 'token02'
    Then o sistema exibe uma mensagem informando que o token 'token02' foi revogado