  When("acessar a tarefa de número {string}") do |idTarefa|
    @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("marcar como pegajosa") do
    @tarefa.marcarPegajoso
  end
  
  Then("o botão {string} não será exibido") do |botao|
    expect(page.has_text?(botao)).to eq false
  end