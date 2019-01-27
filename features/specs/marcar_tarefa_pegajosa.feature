Feature: Marcar tarefa como pegajosa

    @tarefa_pegajosa
    Scenario: Marcar tarefa como pegajosa
        Given o usuário está logado no sistema
        When acessar a tarefa de número '0000011'
        And marcar como pegajosa
        Then o botão 'Marcar como Pegajoso' não será exibido