Feature: Redefinir senha

    @redefinir_senha
    Scenario: Redefinir senha
        Given o usuário está logado no sistema
        And acessou o cadastro do usuario 'maria'
        When redefinir a senha
        Then o sistema informa que 'Uma solicitação de confirmação foi enviada ao endereço de e-mail do usuário selecionado. Através deste, o usuário será capaz de alterar sua senha.'