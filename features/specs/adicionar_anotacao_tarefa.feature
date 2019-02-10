Feature: Adicionar anotação em uma tarefa

@anotacao
Scenario: Adicionar anotação em uma tarefa
    Given o usuário está logado no sistema
    And acessou o cadastro da tarefa '0000003'
    When inserir a anotação 'versão instalada'
    And adicionar anotação
    Then a anotação será inserida na tarefa com o texto 'versão instalada'