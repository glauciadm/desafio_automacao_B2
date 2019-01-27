Given("acessou o cadastro da tarefa {string}") do |idTarefa|
   @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("inserir a anotação {string}") do |anotacao|
    @tarefa.textoAnotacao(anotacao)
  end
  
  When("adicionar anotação") do
    @tarefa.adicionarAnotacao
  end
  
  Then("a anotação será inserida na tarefa com o texto {string}") do |anotacao|
    expect(page.has_text?(anotacao)).to eq true
  end