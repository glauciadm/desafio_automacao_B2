Given("informou o nome do usuario {string}") do |usuario|
    @login_page.user(usuario)
  end
  
  Given("enviou as informações") do
    @login_page.autentication
  end
  
  When("informar que perdeu a senha") do
    @login_page.recuperarSenha
  end
  
  When("inserir o email {string}") do |email|
    @login_page.inserirEmail(email)
  end
  
  Then("o sistema será redirecionado para a pagina de login") do
    expect(page).to have_current_path('http://mantis.glaucia.base2.com.br/login_page.php?return=lost_pwd.php', url: true)
  end
  