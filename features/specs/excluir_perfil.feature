Feature: Excluir perfil

@excluir_perfil
Scenario: Excluir perfil
    Given o usuário está logado no sistema
    And acessou o cadastro de perfís
    When informar que deseja apagar um perfil
    And selecionar o perfil 'iphone 8 iOS 12'
    And salvar as informações
    Then o perfil 'iphone 8 iOS 12' será apagado