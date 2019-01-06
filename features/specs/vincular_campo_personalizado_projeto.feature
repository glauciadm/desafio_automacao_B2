Feature: Vincular campo personalizado a um projeto

    @vincular_campo
    Scenario: Vincular campo personalizado a um projeto
        Given o usuário está logado no sistema
        And selecionou o cadastro do campo personalizado 'campo01'
        When selecionar o projeto 'projeto14'
        And vincular campo ao projeto
        Then será exibido o botão 'Remover' para desvincular o projeto