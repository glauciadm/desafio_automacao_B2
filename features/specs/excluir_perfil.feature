Feature: Excluir perfil

@excluir_perfil
Scenario: Excluir perfil
    Given o usuário está logado no sistema
    And acessou o cadastro de perfís
    When informar que deseja apagar um perfil
    And selecionar o perfil 'moto g Android 8.1'
    And enviar as informações
    Then o perfil será apagado