Given("acessou a tarefa {string}") do |idTarefa|
    @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("fechar a tarefa") do
    @tarefa.buttonFechar
  end
  
  When("preencher o formulário de encerramento {string}, {string}, {string}, {string}") do |resolucao, atribuido, visibilidade, anotacao|
    @tarefa.formFechar(resolucao, atribuido, visibilidade, anotacao)
  end
  
  When("fechar tarefa") do
    @tarefa.fecharTarefa
  end
  
  Then("o estado da tarefa será alterado para {string}") do |string|
    
  end
