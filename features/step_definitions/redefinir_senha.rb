Given("acessou o cadastro do usuario {string}") do |nome_usuario|
    @menu.gerenciar
    @user.gerenciarUser
    @user.selecionarUser(nome_usuario)
  end
  
  When("redefinir a senha") do
    @user.redefinirSenha
  end
  
  Then("o sistema informa que {string}") do |mensagem|
    expect(page.has_text?(mensagem)). to eq true
  end
  