Feature: Aplicar marcador em tarefa

@aplicar_marcador
Scenario: Aplicar marcador em tarefa
Given o usuário está logado no sistema
And abriu a tarefa '0000021'
When inserir o marcador 'tag02'
And aplicar marcador
Then o marcador 'tag02' será exibido na sessão Marcadores