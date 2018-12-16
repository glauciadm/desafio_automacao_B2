  When("pesquisar a tarefa que possui o id {string}") do |idTarefa|                       
    @tarefa.pesquisarTarefa(idTarefa)
  end                                                                                                                                                     
                                                                                  
  Then("a tarefa pesquisada será exibida na tela") do                            
    expect(page).to have_current_path('http://mantis.glaucia.base2.com.br/view.php?id=13', url: true)
  end                                                                             
                                                                                  