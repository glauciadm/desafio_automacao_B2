Feature: Fechar tarefa

    @fechar_tarefa
    Scenario Outline: Fechar tarefa aberta
        Given o usuário está logado no sistema
        And acessou a tarefa '0000005'
        When fechar a tarefa
        And preencher o formulário de encerramento "<resolucao>", "<atribuido>", "<visibilidade>", "<anotacao>"
        And fechar tarefa
        Then o estado da tarefa será alterado para 'fechado'

        Examples:
            | resolucao | atribuido | visibilidade | anotacao        |
            | suspenso  | juliano   | true         | tarefa suspensa |