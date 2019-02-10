Feature: Vincular campo personalizado a um projeto

    @vincular_campo
    Scenario: Vincular campo personalizado a um projeto
        Given o usuário está logado no sistema
        And selecionou o cadastro do campo personalizado 'campo04'
        When selecionar o projeto 'projetoA'
        And vincular campo ao projeto
        Then será exibido o botão 'Remover' para desvincular o projeto