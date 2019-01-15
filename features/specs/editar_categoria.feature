Feature: Editar categoria

@editar_cat
Scenario: Editar cadastro de categoria
    Given o usuário está logado no sistema
    And acessou a lista de categorias cadastradas
    When atualizar a categoria 'categoria2019'
    And atribuir a categoria para o usuário 'juliano'
    And atualizar categoria
    Then o sistema exibe na tela a mensagem 'Operação realizada com sucesso.' 