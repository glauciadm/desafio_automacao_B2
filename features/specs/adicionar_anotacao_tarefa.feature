Feature: Adicionar anotação em uma tarefa

@anotacao
Scenario: Adicionar anotação em uma tarefa
    Given o usuário está logado no sistema
    And acessou o cadastro da tarefa 'tarefa09'
    When inserir a anotação 'versão atualizada'
    And anexar um arquivo
    And adicionar anotação
    Then a anotação será inserida na tarefa

