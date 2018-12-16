Feature: Editar projeto

@editar_projeto
Scenario: Editar projeto cadastrado - desabilitar cadastro
    Given o usuário está logado no sistema
    And acessou o gerenciamento de projetos
    When abrir o cadastro do projeto 'projeto14'
    And alterar o projeto para 'privado'
    And atualizar o projeto
    Then será exibida a tela de gerenciamento de projetos
