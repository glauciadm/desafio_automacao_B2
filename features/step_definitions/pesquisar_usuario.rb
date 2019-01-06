Given("acessou o cadastro de usuários") do
    @menu.gerenciar
    @user.gerenciarUser
  end
  
  When("pesquisar pelo usuário {string}") do |nome_usuario|
   @user.pesquisarUser(nome_usuario)
  end
  
  Then("será aberto o cadastro do usuário pesquisado") do
    expect(page).to have_current_path('http://mantis.glaucia.base2.com.br/manage_user_edit_page.php?username=juliano', url: true)
  end
  