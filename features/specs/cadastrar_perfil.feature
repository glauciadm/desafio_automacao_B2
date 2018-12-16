Feature: Cadastrar perfil

    @perfil
    Scenario Outline: Cadastrar perfil
        Given o usuário está logado no sistema
        And acessou minha conta
        When acessar o cadastro de perfís
        And preencher os campos obrigatórios "<plataforma>", "<so>" e "<versao>"
        And adicionar perfil
        Then o perfil será criado

        Examples:
            | plataforma | so      | versao |
            | iphone X   | iOS     | 12.1   |
            | moto g     | Android | 8.0    |            