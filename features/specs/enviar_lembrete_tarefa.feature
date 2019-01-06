Feature: Enviar lembrete de uma tarefa

    @lembrete
    Scenario: Enviar lembrete de uma tarefa
        Given o usuário está logado no sistema
        And acessou o cadastro da tarefa de id '0000013'
        When enviar um lembrete
        And selecionar o usuário 'administrator'
        And inserir a mensagem 'tarefa em atraso'
        And enviar o lembrete
        Then o sistema informa 'Operação realizada com sucesso.'