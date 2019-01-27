Feature: Adicionar usuário ao projeto

    @user_projeto
    Scenario: Adicionar usuário ao projeto
        Given o usuário está logado no sistema
        And abriu a tela de gerenciamento de usuários
        When acessar o cadastro do usuário 'zerry'
        And selecionar o projeto 'projeto14' para atribuição
        And adicionar usuário
        Then o projeto 'projeto14' será exibido na lista de 'Projetos Atribuídos'