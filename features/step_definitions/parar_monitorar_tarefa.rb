Given("pesquisou a tarefa {string}") do |idTarefa|
    @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("parar de monitorar a tarefa") do
    @tarefa.pararMonitoramentoTarefa
  end
  
  Then("o botão {string} não será mais exibido na tela") do |botao|
    expect(page.has_text?(botao)). to eq false
  end