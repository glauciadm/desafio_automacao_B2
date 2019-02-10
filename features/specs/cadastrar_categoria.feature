Feature: Cadastrar categoria

@cat
Scenario: Cadastrar categoria
	Given o usuário está logado no sistema
	And acessou o gerenciamento de projetos
	When informar o nome da categoria 'categoriaCat03'
	And adicionar a categoria
	Then 'categoriaCat03' é exibida na lista de categorias