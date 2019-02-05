Feature: Cadastrar perfil

    @perfil
    Scenario Outline: Cadastrar perfil
        Given o usuário está logado no sistema
        And acessou o menu de gerenciamento
        When acessar o cadastro de perfís
        And preencher os campos obrigatórios "<plataforma>", "<so>" e "<versao>"
        And adicionar perfil
        Then o perfil "<plataforma>" criado será exibido na lista de seleção de perfis

        Examples:
            | plataforma | so      | versao |
            | iphone 8   | iOS     | 12.1   |
            | moto x     | Android | 8.0    |