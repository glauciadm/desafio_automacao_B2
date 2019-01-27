Feature: Aplicar marcador em tarefa

@aplicar_marcador
Scenario: Aplicar marcador em tarefa
Given o usuário está logado no sistema
And abriu a tarefa '0000011'
When inserir o marcador 'tag2'
And aplicar marcador
Then o marcador 'tag2' será exibido na sessão Marcadores