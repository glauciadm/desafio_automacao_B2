Given("acessou cadastro do usuário {string}") do |nome_usuario|
    @menu.gerenciar
    @user.gerenciarUser
    @user.selecionarUser(nome_usuario)
  end
  
  When("representar usuário") do
    @user.representarUser
  end
  
  When("prosseguir") do
    @user.prosseguirRepresentacao
  end
  
  Then("o sistema estará logado com o usuário {string}") do |string|
    #validar nome do usuário logado
  end