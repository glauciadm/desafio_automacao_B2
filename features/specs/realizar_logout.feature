Feature: Realizar logout

@logout
Scenario: Realizar logout do usuário logado
	Given o usuário está logado no sistema
	When fazer logout da conta
	Then o sistema será direcionado para a tela de login