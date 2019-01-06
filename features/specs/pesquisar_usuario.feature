Feature: Pesquisar usuário

@pesquisar_user
Scenario: Pesquisar usuário
	Given o usuário está logado no sistema
    And acessou o cadastro de usuários
    When pesquisar pelo usuário 'juliano'
    Then será aberto o cadastro do usuário pesquisado