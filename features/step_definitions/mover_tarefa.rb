Given("acessou o projeto {string}") do |nomeProjeto|                                  
    @projeto.acessarProjeto
    @projeto.localizarProjeto(nomeProjeto)
  end                                                                              
                                                                                   
  Given("visualizou o quadro de tarefas") do                                       
    @menu.verTarefas 
  end                                                                              
                                                                                   
  When("selecionar todas as tarefas") do                                           
    @tarefa.selecionarTodasTarefas    
  end                                                                              
                                                                                   
  When("mover as tarefas") do                                                      
    @tarefa.moverOK    
  end                                                                              
                                                                                   
  When("informar que deseja mover tarefas para o projeto {string}") do |nomeProjeto|    
    @tarefa.selecionarProjetoMove(nomeProjeto)    
  end                                                                              
                                                                                   
  When("mover tarefas") do                                                         
    @tarefa.moverTarefas    
  end                                                                              
                                                                                   
  Then("o quadro de tarefas informa que existem  {string} tarefas") do |quantidade|    
    expect(page.has_text?(quantidade)). to eq true
  end                                                                              
                                                                                   