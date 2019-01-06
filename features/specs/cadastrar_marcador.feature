Feature: Cadastrar marcador

    @marcador
    Scenario Outline: Cadastrar marcador
        Given o usuário está logado no sistema
        And acessou o gerenciamento de marcadores
        When preencher os campos "<nome>" e "<descricao>"
        And criar marcador
        Then o marcador "<nome>" será exibido na lista de marcadores

        Examples:
            | nome       | descricao  |
            | marcador01 | marcador01 |
            | marcador02 | marcador02 |
            | marcador03 | marcador03 |
            | marcador04 | marcador04 |