Feature: Alterar projeto visualizado

@visualizar_projeto
Scenario: Alterar projeto na visualização
Given o usuário está logado no sistema
And está visualizando o projeto 'projeto'
When alterar para o projeto 'projeto14'
Then o projeto visualizado será o 'projeto14'
