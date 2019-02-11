Feature: Excluir categoria

@excluir_cat
Scenario: Excluir categoria cadastrada
    Given o usuário está logado no sistema
    And acessou o cadastro das categorias
    When apagar o cadastro da categoria 'cat03'
    And confirmar a exclusão da categoria selecionada
    Then a categoria 'cat03' não é exibida no cadastro de categoria