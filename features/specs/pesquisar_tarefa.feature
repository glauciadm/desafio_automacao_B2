Feature: Pesquisar tarefa

    @pesquisa_tarefa
    Scenario: Pesquisar tarefa na minha visão
        Given o usuário está logado no sistema
        When pesquisar a tarefa que possui o id '0000022'
        Then a tarefa pesquisada será exibida na tela