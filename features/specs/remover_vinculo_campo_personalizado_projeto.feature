Feature: Remover vínculo do campo personalizado em um projeto

@remover_campo
Scenario: Remover vínculo do campo personalizado em um projeto
    Given o usuário está logado no sistema
    And possui o cadastro do campo personalizado 'campo01'
    And o campo está vinculado a um projeto
    When remover o projeto vinculado
    And confirmar a exclusão do vínculo
    Then o sistema informa 'Operação realizada com sucesso.'



