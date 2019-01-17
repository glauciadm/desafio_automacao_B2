Given("acessou a visualização de tarefas cadastradas") do
    @menu.verTarefas
  end
  
  When("selecionar {string} no filtro de prioridade") do |prioridade|
    @tarefa.filtroPrioridade(prioridade)
  end
  
  When("visibilidade igual a {string}") do |visibilidade|
    @tarefa.filtroVisibilidade(visibilidade)
  end
  
  When("salvar o filtro atual") do
    @tarefa.salvarFiltroAtual
  end
  
  When("informar o nome do filtro {string}") do |nome_filtro|
    @tarefa.nomeFiltro(nome_filtro)
  end
  
  When("marcar o filtro como público") do
    @tarefa.filtroPublico
  end

  When("salvar filtro") do
    @tarefa.salvarNomeFiltro
    sleep(2)
  end 
  
  Then("o filtro criado {string} estará selecionado no campo de seleção do filtro") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  