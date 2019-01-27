  Given("acessou o gerenciamento de usuários") do
    @menu.gerenciar
    @user.gerenciarUser
  end
  
  When("criar nova conta") do
    @user.criarNovaConta
  end
  When("preencher os campos obrigatórios {string}, {string}, {string} e {string}") do |nomeUsuario, nomeVerdadeiro, email, nivelAcesso|
    @user.preencherCampos(nomeUsuario, nomeVerdadeiro, email, nivelAcesso)
  end
  
  When("criar usuário") do
    @user.criarUsuario
  end
  
  Then("será exibida a mensagem com {string} e {string}") do |nomeUsuario, nivelAcesso|
    expect(page.has_text?('Usuário ' +nomeUsuario+ ' criado com um nível de acesso de ' +nivelAcesso)). to eq true 
  end