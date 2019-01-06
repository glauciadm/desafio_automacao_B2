Feature: Representar usuário

@representar_user
Scenario: Representar usuário
    Given o usuário está logado no sistema
    And acessou cadastro do usuário 'glaucia'
    When representar usuário
    And prosseguir
    Then o sistema estará logado com o usuário 'glaucia'