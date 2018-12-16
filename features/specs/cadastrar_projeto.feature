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
            | projeto11   | desenvolvimento | privado      | projeto11 |
            | projeto12   | release         | privado      | projeto12 |
            | projeto13   | estável         | público      | projeto13 |
            | projeto14   | obsoleto        | público      | projeto14 |




