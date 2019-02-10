Feature: Excluir marcador

@excluir_marcador
Scenario: Excluir marcador
    Given o usuário está logado no sistema
    And acessou o cadastro de marcadores
    When abrir o cadastro do marcador 'tag05'
    And apagar marcador
    And confirmar a exclusão do cadastro
    Then o marcador 'tag05' não será exibido na lista de marcadores