Feature: Criar token API

@token
Scenario: Cadatrar token API
    Given o usuário está logado no sistema
    And acessou o menu de tokens API
    When inserir o nome do token 'token01'
    And criar token API
    Then será exibido 'Token que deve ser usado ao acessar API'

    