When("acessar a tarefa número {string}") do |idTarefa|
    @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("desmarcar como pegajosa") do
    @tarefa.desmarcarPegajoso
  end
  
  Then("o botão {string} não será mais exibido nesta tarefa") do |botao|
    expect(page.has_text?(botao)).to eq false
  end
  