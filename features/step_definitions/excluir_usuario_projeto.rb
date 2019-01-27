Given("abriu gerenciamento de usuários") do                                           
    @menu.gerenciar
    @user.gerenciarUser         
  end                                                                                   
                                                                                        
  When("acessar cadastro do usuário {string}") do |nome_usuario|                              
    @user.selecionarUser(nome_usuario)        
  end                                                                                   
            
  When("remover o vínculo com o projeto {string}") do |projeto|                     
    @user.removerUsuarioProjeto(projeto)        
  end             

  When("confirmar que deseja remover o usuário do projeto") do
    @user.confirmarRemocaoUsuarioProjeto
  end
                                                                                        
  Then("o projeto {string} não será exibido na lista de {string}") do |projeto, title| 
    tr = find('table.table-bordered.table-condensed.table-striped tbody tr', text: title) 
    expect(tr.has_text?(projeto)). to eq false         
  end                                                                                   
                                                                                        
                                                                                        