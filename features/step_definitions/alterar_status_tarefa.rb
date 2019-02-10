Given("pesquisou pela tarefa {string}") do |idTarefa|
    @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("selecionar o status {string}") do |status|
    @tarefa.selecionarStatusTarefa(status)
  end

  When("alterar status") do
    @tarefa.alterarStatus
  end
   
  When("inserir a anotação da tarefa {string}") do |anotacao|
    @tarefa.textoAnotacao(anotacao)
  end
  
  When("confirmar tarefa") do
    @tarefa.confirmarTarefa
  end
  
  Then("o estado da tarefa será {string}") do |status|
    expect(page.has_text?(status)). to eq true
  end