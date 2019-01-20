Feature: Mover tarefa

@mover_tarefa
Scenario: Mover tarefa para outro projeto
    Given o usuário está logado no sistema
    And acessou o quadro de tarefas do projeto 'projeto2'
    When selecionar todas as tarefas
    And mover tarefas
    And informar que deseja mover tarefas para o projeto 'projeto14'