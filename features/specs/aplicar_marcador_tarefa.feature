Feature: Aplicar marcador em tarefa

@aplicar_marcador
Scenario: Aplicar marcador em tarefa
Given o usuário está logado no sistema
And abriu a tarefa '0000021'
When inserir o marcador 'tag03'
And aplicar marcador
Then o marcador 'tag03' será exibido na sessão Marcadores