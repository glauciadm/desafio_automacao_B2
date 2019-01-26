Given("abriu o cadastro da tarefa {string}") do |idTarefa|
    @menu.verTarefas
    @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("monitorar tarefa") do
    @tarefa.monitorarTarefa
  end
  
  Then("o botão {string} não será mais exibido") do |botao|
    expect(page.has_text?(botao)). to eq false
  end