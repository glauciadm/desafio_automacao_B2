Feature: Mover tarefa

@mover_tarefa
Scenario: Mover tarefa para outro projeto
    Given o usuário está logado no sistema
    And acessou o projeto 'projeto2'
    And visualizou o quadro de tarefas
    When selecionar todas as tarefas
    And mover as tarefas
    And informar que deseja mover tarefas para o projeto 'projeto14'
    And mover tarefas
    Then o quadro de tarefas informa que existem  '0 - 0 / 0' tarefas