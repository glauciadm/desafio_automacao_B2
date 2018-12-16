Feature: Realizar login

@login
Scenario: Realizar login no mantis
    Given o usuário acessou a tela de login
    When informar o nome do usuario "administrator"
    And enviar as informações
    And informar a senha "duarte"
    And autenticar usuario
    Then será direcionado para a página inicial