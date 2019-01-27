Given("visualizou tarefas") do
    @menu.verTarefas
  end
  
  When("gerenciar filtro") do
    @tarefa.menuHamburguer
    @tarefa.gerenciarFiltro
  end
  
  When("alterar o filtro {string}") do |filtro|
    @tarefa.alterarFiltro(filtro)
  end
  
  When("alterar o nome do filtro para {string}") do |filtro|
    @tarefa.editarNomeFiltro(filtro)
  end
  
  When("atualizar filtro") do
    @tarefa.atualizarFiltro
  end
  
  Then("o filtro {string} será exibido na tela com o novo nome") do |nome_filtro|
    expect(page.has_text?(nome_filtro)).to eq true
  end