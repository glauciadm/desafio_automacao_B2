Feature: Adicionar e editar categoria

    @add_edit_cat
    Scenario: Adicionar e editar categoria
        Given o usuário está logado no sistema
        And abriu o gerenciamento de projetos
        When inserir o nome da categoria 'catnova'
        And adicionar e editar categoria
        And atribuir a nova categoria ao usuario 'juliano'
        And atualizar a categoria
        Then a categoria criada 'catnova' é exibida na lista de categorias

