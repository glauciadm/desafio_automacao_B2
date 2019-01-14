Feature: Excluir categoria

@excluir_cat
Scenario: Excluir categoria cadastrada
    Given o usuário está logado no sistema
    And acessou o cadastro das categorias
    When apagar o cadastro da categoria 'categoria2018'
    And confirmar a exclusão
    Then o sistema informa 'Operação realizada com sucesso.'

