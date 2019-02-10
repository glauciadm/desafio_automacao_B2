Feature: Monitorar tarefa

@monitorar_tarefa
Scenario: Monitorar tarefa
    Given o usuário está logado no sistema
    And abriu o cadastro da tarefa '0000027'
    When monitorar tarefa
    Then o botão 'Monitorar' não será mais exibido