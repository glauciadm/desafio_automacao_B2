Feature: Logar com senha incorreta

@senha_incorreta
Scenario: Realizar login com senha incorreta
    Given o usuário acessou tela de login
    And inseriu o usuário 'glaucia'
    And enviou os dados
    When inserir a senha 'machado'
    And enviar os dados
    Then é exibida a mensagem 'Sua conta pode estar desativada ou bloqueada ou o nome de usuário e a senha que você digitou não estão corretos.'
