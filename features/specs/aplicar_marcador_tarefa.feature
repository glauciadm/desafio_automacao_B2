Feature: Aplicar marcador em tarefa

@aplicar_marcador
Scenario: Aplicar marcadores em tarefa
Given o usuário está logado no sistema
And abriu a tarefa '0000011'
When inserir os marcadores 'tag' e 'tag2'
And aplicar marcadores
Then os marcadores 'tag' e 'tag2' serão exibidos na sessão 'Marcadores'