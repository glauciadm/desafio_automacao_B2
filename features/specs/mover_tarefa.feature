Feature: Mover tarefa

@mover_tarefa
Scenario: Mover tarefa para outro projeto
    Given o usuário está logado no sistema
    And acessou o projeto 'projetoB'
    And visualizou o quadro de tarefas
    When selecionar todas as tarefas
    And mover as tarefas
    And informar que deseja mover tarefas para o projeto 'projetoA'
    And mover tarefas
    Then o quadro de tarefas informa que existem  '0 - 0 / 0' tarefas