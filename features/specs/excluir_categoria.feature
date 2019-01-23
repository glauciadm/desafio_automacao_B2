Feature: Excluir categoria

@excluir_cat
Scenario: Excluir categoria cadastrada
    Given o usuário está logado no sistema
    And acessou o cadastro das categorias
    When apagar o cadastro da categoria 'categoria2016'
    And confirmar a exclusão da categoria selecionada
    Then a categoria 'categoria2016' não é exibida no cadastro de categoria