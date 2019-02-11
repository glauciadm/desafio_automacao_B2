Feature: Cadastrar projeto

    @criar_projeto
    Scenario Outline: Criar novo projeto
        Given o usuário está logado no sistema
        When gerenciar projetos
        And criar novo projeto
        And preencher os campos "<nomeProjeto>", "<estado>", "<visibilidade>" e "<descricao>"
        And adicionar projeto
        Then será exibida mensagem 'Operação realizada com sucesso.'

        Examples:
            | nomeProjeto | estado          | visibilidade | descricao |
            | projetoX    | desenvolvimento | privado      | projetoX  |
            | projetoY    | release         | privado      | projetoY  |
            | projetoW    | estável         | público      | projetoW  |
            | projetoZ    | obsoleto        | público      | projetoZ  |