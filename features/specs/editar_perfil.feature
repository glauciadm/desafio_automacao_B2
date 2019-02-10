Feature: Editar perfil

@editar_perfil
Scenario: Editar perfil cadastrado
    Given o usuário está logado no sistema
    And acessou cadastro de perfis
    When marcar que deseja editar um perfil
    And selecionar o perfil 'iphone 8 iOS 10'
    And enviar informações
    And atualizar os campos para '12', 'device restaurado' 
    And atualizar o perfil
    Then o sistema será direcionado para a pagina de cadastro de perfil