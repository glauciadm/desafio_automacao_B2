Given("acessou o cadastro da tarefa {string}") do |nome_tarefa|
    @menu.verTarefas
    @tarefa.abrirTarefa(nome_tarefa)
  end
  
  When("inserir a anotação {string}") do |anotacao|
    @tarefa.textoAnotacao(anotacao)
  end
  
  When("anexar um arquivo") do
    @tarefa.inserirAnexoAnotacao
  end
  
  When("adicionar anotação") do
    @tarefa.adicionarAnotacao
  end
  
  Then("a anotação será inserida na tarefa") do
    pending # Write code here that turns the phrase above into concrete actions
  end