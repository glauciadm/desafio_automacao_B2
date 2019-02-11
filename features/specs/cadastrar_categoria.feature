Feature: Cadastrar categoria

@cat
Scenario: Cadastrar categoria
	Given o usuário está logado no sistema
	And acessou o gerenciamento de projetos
	When informar o nome da categoria 'cat01'
	And adicionar a categoria
	Then 'cat01' é exibida na lista de categorias