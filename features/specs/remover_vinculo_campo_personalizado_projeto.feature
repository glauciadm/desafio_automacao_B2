Feature: Remover vínculo do campo personalizado em um projeto

@remover_campo
Scenario: Remover vínculo do campo personalizado em um projeto
    Given o usuário está logado no sistema
    And acessou o cadastro do campo personalizado 'campo05' que possui um projeto vinculado
    When remover o projeto vinculado
    And confirmar a exclusão do projeto vinculado
    Then o sistema irá exibir a mensagem 'Operação realizada com sucesso.'