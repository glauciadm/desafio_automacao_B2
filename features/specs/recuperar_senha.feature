Feature: Recuperar senha

@recuperar_senha
Scenario: Recuperar senha
    Given o usuário acessou a tela de login
    And informou o nome do usuario 'andre'
    And enviou as informações
    When informar que perdeu a senha
    And inserir o email 'andre@gmail.com'
    And enviar as informações
    Then o sistema será redirecionado para a pagina de login