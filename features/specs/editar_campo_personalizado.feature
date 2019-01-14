Feature: Editar campo personalizado

    @editar_campo
    Scenario Outline: Editar campo personalizado
        Given o usuário está logado no sistema
        And abriu o cadastro do campo personalizado "<campo>"
        When preencher os campos "<tipo>", "<acessoEscrita>", "<mostrarAoCriarTarefa>"
        And atualizar campo personalizado
        Then o campo atualizado 'campo02' será exibido na lista de campos personalizados

        Examples:
            | campo   | tipo   | acessoEscrita | mostrarAoCriarTarefa |
            | campo01 | Data   | desenvolvedor | true                 |
            | campo02 | String | visualizador  | true                 |