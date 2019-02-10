Feature: Excluir filtro tarefa

@excluir_filtro
Scenario: Excluir filtro de tarefas
Given o usuário está logado no sistema
And visualizou as tarefas
When gerenciar filtros
And deletar o filtro 'filtro02'
And apagar filtro
Then é informado 'Operação realizada com sucesso.'
And o filtro 'filtro02' não é listado nos filtros disponíveis