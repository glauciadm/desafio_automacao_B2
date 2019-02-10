Feature: Cadastrar tarefa

    @tarefa
    Scenario Outline: Cadastrar tarefa
        Given o usuário está logado no sistema
        When acessar o menu de criar tarefas
        And preencher os campos "<categoria>", "<gravidade>", "<prioridade>", "<resumo>", "<descricao>"
        And criar nova tarefa
        Then será exibida a mensagem 'Operação realizada com sucesso.'

        Examples:
            | categoria                   | gravidade | prioridade | resumo   | descricao |
            | [Todos os Projetos] General | pequeno   | normal     | tarefa07 | tarefaX   |
            | [Todos os Projetos] General | grande    | baixa      | tarefa08 | tarefaY   |
            | [Todos os Projetos] General | recurso   | urgente    | tarefa09 | tarefaZ   |