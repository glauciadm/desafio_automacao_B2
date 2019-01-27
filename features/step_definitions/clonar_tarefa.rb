Given("pesquisou a tarefa número {string}") do |idTarefa|
    @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("clonar tarefa") do
    @tarefa.criarClone
  end
  
  When("editar o resumo da tarefa para {string}") do |resumo|
    @tarefa.editarResumoTarefa(resumo)
  end
  
  When("criar nova tarefa clonada") do
    @tarefa.criarNovaTarefa
  end
  
  Then("é exibido {string}") do |mensagem|
    expect(page.has_text?(mensagem)).to eq true
  end