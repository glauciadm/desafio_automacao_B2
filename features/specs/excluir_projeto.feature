Feature: Excluir projeto

@excluir_projeto
Scenario: Excluir projeto cadastrado
    Given o usuário está logado no sistema
    When acessar o gerenciamento de projetos
    And abrir o cadastro do projeto 'projeto13'
    And apagar projeto
    And confirmar a exclusão do projeto
    Then o projeto 'projeto13' não será exibido na lista de projetos