Feature: Imprimir tarefas

    @imprimir
    Scenario: Imprimir tarefas no quadro de visualização
        Given o usuário está logado no sistema
        And acessou o quadro de tarefas
        When imprimir tarefas
        Then será exibido um relatório com todas as tarefas