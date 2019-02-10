Feature: Editar filtro tarefa

@editar_filtro
Scenario: Editar filtro de tarefas
Given o usuário está logado no sistema
And visualizou tarefas
When gerenciar filtro
And alterar o filtro 'filtro01'
And alterar o nome do filtro para 'filtroatualizado'
And atualizar filtro
Then o filtro 'filtroatualizado' será exibido na tela com o novo nome