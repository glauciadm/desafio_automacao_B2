Feature: Parar de monitorar tarefa

@parar_monitorar_tarefa
Scenario: Parar de monitorar tarefa
    Given o usuário está logado no sistema
    And pesquisou a tarefa '0000022'
    When parar de monitorar a tarefa
    Then o botão 'Parar de Monitorar' não será mais exibido na tela