Feature: Excluir categoria

@excluir_cat
Scenario: Excluir categoria cadastrada
    Given o usuário está logado no sistema
    And acessou o cadastro das categorias
    When apagar o cadastro da categoria 'categoria2018'
    And confirmar a exclusão da categoria
    Then o sistema exibe a mensagem 'Operação realizada com sucesso.'
    And a categoria 'categoria2018' não é exibida no cadastro de categoria

