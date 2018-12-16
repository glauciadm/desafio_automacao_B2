When("gerenciar usuários") do                                                  
    @menu.gerenciar
    @user.gerenciarUser
  end                                                                            

When("abrir o cadastro do usuário {string}") do |nome_usuario|
    @user.localizarUser(nome_usuario)
  end
  
  When("apagar o usuário") do
    @user.apagarUser
  end
  
  When("confirmar a exclusão do usuário") do
    @user.confirmarExclusaoUser
  end
  
  Then("será exibida a mensagem {string}") do |string|
   page.has_text?('Operação realizada com sucesso.')
  end