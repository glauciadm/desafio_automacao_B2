Feature: Editar marcador

@editar_marcador
Scenario: Excluir marcador
    Given o usuário está logado no sistema
    And acessou cadastro de marcadores
    And abriu o cadastro do marcador 'marcador01'
    When atualizar o marcador
    And alterar o nome do marcador para 'marcador oooldest'
    And atualizar marcador
    Then será exibida a tela com o novo nome 'marcador oooldest'