Given("acessou gerenciamento de usuário") do                                 
    @menu.gerenciar
    @user.gerenciarUser
  end                                                                          
                                                                               
  When("acessar o usuário {string}") do |nome_usuario|                               
    @user.selecionarUser(nome_usuario)
  end                                                                          
                                                                               
  When("desabilitar o usuário") do                                             
    @user.desabilitarUser
  end                                                                          
                                                                               
  Then("mensagem exibida {string}") do |mensagem|                                
    expect(page.has_text?(mensagem)). to eq true 
  end