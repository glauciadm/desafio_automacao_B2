Feature: Clonar tarefa

    @clonar_tarefa
    Scenario: Clonar tarefa
        Given o usuário está logado no sistema
        And pesquisou a tarefa número '0000011'
        When clonar tarefa
        And editar o resumo da tarefa para 'tarefa clonada'
        And criar nova tarefa clonada
        Then é exibido 'Operação realizada com sucesso.'