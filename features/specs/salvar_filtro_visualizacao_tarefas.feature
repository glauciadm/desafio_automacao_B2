Feature: Salvar filtro na visualização de tarefas

@filtro
Scenario: Salvar filtro atual
    Given o usuário está logado no sistema
    And acessou a visualização de tarefas cadastradas
    When selecionar 'baixa' no filtro de prioridade
    And visibilidade igual a 'público'
    And salvar o filtro atual
    And informar o nome do filtro 'filtro04'
    And marcar o filtro como público
    And salvar filtro
    Then o filtro criado 'filtro04' estará selecionado no campo de seleção do filtro