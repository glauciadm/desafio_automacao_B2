  Given("o usuário está logado no sistema") do
    @login_page.acess
    @login_page.user('administrator')
    @login_page.autentication
    @login_page.password('duarte')
    @login_page.autentication
  end
  
  When("fazer logout da conta") do
    @menu.administrator
    @logout.logout
  end
  
  Then("o sistema será direcionado para a tela de login") do
    expect(page).to have_current_path('http://mantis.glaucia.base2.com.br/login_page.php', url: true)
  end
  