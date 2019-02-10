Feature: Excluir perfil

@excluir_perfil
Scenario: Excluir perfil
    Given o usuário está logado no sistema
    And acessou o cadastro de perfís
    When informar que deseja apagar um perfil
    And selecionar o perfil 'moto x Android 8.0'
    And salvar as informações
    Then o perfil 'moto x Android 8.0' será apagado