When("acessar o gerenciamento de projetos") do                                    
    @menu.gerenciar
    @projeto.gerenciarProjetos
  end                                                                               
                                                                                    
  When("abrir o cadastro do projeto {string}") do |nomeProjeto|                          
    @projeto.localizarProjeto(nomeProjeto)
  end                                                                               
                                                                                    
  When("apagar projeto") do                                                         
    @projeto.apagarProjeto
  end                                                                               
                                                                                    
  When("confirmar a exclusão do projeto") do                                        
    @projeto.apagarProjeto    
  end                                                                               
                                                        
  Then("o projeto {string} não será exibido na lista de projetos") do |nomeProjeto|                 
    expect(page.has_text?(nomeProjeto)).to eq false
  end                                                                              