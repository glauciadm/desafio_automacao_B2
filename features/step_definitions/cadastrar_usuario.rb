 Given("o usuário administrador está logado no sistema") do
    @login_page.acess
    @login_page.user('administrator')
    @login_page.autentication
    @login_page.password('duarte')
    @login_page.autentication
  end
  
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
   page.has_text?('Usuario ' + nomeUsuario + ' criado com um nível de acesso de ' + nivelAcesso )
  end
  
