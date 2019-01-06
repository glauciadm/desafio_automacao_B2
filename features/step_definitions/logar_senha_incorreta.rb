Given("o usuário acessou tela de login") do
    @login_page.acess
  end
  
  Given("inseriu o usuário {string}") do |usuario|
    @login_page.user(usuario)
  end
  
  Given("enviou os dados") do
    @login_page.autentication
  end
  
  When("inserir a senha {string}") do |senha|
    @login_page.password(senha)
  end
  
  When("enviar os dados") do
    @login_page.autentication
  end
  
  Then("é exibida a mensagem {string}") do |mensagem|
    expect(page.has_text?(mensagem)). to eq true
  end
  
  