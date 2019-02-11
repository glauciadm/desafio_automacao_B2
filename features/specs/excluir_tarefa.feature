Feature: Excluir tarefa

@excluir_tarefa
Scenario: Excluir tarefa cadastrada
    Given o usuário está logado no sistema
    When abrir o cadastro da tarefa que possui o id '0000050'
    And apagar a tarefa
    And confirmar a exclusão da tarefa
    Then o sistema será redirecionado para a tela de visualização de tarefas