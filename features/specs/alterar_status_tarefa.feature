Feature: Alterar status da tarefa

@alterar_status
Scenario: Alterar status de uma tarefa
    Given o usuário está logado no sistema
    And pesquisou pela tarefa '0000046'
    When selecionar o status 'confirmado'
    And alterar status
    And inserir a anotação da tarefa 'tarefa confirmada'
    And confirmar tarefa
    Then o estado da tarefa será ' confirmado'