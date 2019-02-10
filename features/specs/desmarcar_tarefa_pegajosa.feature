Feature: Desmarcar tarefa como pegajosa

    @desmarcar_tarefa_pegajosa
    Scenario: Desmarcar tarefa como pegajosa
        Given o usuário está logado no sistema
        When acessar a tarefa número '0000021'
        And desmarcar como pegajosa
        Then o botão 'Desmarcar como Pegajoso' não será mais exibido nesta tarefa