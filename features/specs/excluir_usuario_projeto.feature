Feature: Excluir usuário do projeto

    @excluir_user_projeto
    Scenario: Excluir projeto associado ao usuário
        Given o usuário está logado no sistema
        And abriu gerenciamento de usuários
        When acessar cadastro do usuário 'zerry'
        And remover o vínculo com o projeto 'projeto14'
        And confirmar que deseja remover o usuário do projeto
        Then o projeto 'projeto14' não será exibido na lista de 'Projetos Atribuídos'