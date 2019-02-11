Feature: Excluir projeto

@excluir_projeto
Scenario: Excluir projeto cadastrado
    Given o usuário está logado no sistema
    When acessar o gerenciamento de projetos
    And abrir o cadastro do projeto 'projetoD'
    And apagar projeto
    And confirmar a exclusão do projeto
    Then o projeto 'projetoD' não será exibido na lista de projetos