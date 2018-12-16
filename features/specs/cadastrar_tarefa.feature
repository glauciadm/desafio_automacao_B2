Feature: Cadastrar tarefa

    @tarefa
    Scenario Outline: Cadastrar tarefa
        Given o usuário está logado no sistema
        When acessar o menu de criar tarefas
        And preencher os campos "<categoria>", "<gravidade>", "<prioridade>", "<resumo>", "<descricao>"
        And criar nova tarefa
        Then será exibida a mensagem 'Operação realizada com sucesso.'

        Examples:
            | categoria                         | gravidade | prioridade | resumo   | descricao |
            | [Todos os Projetos] novacategoria | pequeno   | normal     | tarefa07 | tarefa07  |
            | [Todos os Projetos] General       | grande    | baixa      | tarefa08 | tarefa08  |
            | [Todos os Projetos] categoria2018 | recurso   | urgente    | tarefa09 | tarefa09  |