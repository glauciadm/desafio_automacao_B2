Given("visualizou as tarefas") do                                              
    @menu.verTarefas 
  end                                                                            
                                                                                 
  When("gerenciar filtros") do                                                   
    @tarefa.menuHamburguer
    @tarefa.gerenciarFiltro  
  end                                                                            
                                                                                 
  When("deletar o filtro {string}") do |filtro|                                  
    @tarefa.deletarFiltro(filtro)  
  end                                                                            
                                                                                 
  When("apagar filtro") do                                                       
    @tarefa.apagarFiltro  
  end                                                                            
                                                                                 
  Then("é informado {string}") do |mensagem|                                       
    expect(page.has_text?(mensagem)).to eq true  
  end                                                                            
                                                                                 
  Then("o filtro {string} não é listado nos filtros disponíveis") do |filtro|    
    expect(page.has_text?(filtro)).to eq false  
  end                                                                            
                                                                                 