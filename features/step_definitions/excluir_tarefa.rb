  Given("acessou o quadro de visualização de tarefas") do
   @menu.verTarefas
  end
  
  When("abrir o cadastro da tarefa que possui o id {string}") do |idTarefa|
    @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("apagar a tarefa") do
    @tarefa.apagarTarefa
  end
  
  When("confirmar a exclusão da tarefa") do
    @tarefa.confirmarExclusaoTarefa
  end
  
  Then("o sistema será redirecionado para a tela de visualização de tarefas") do
  expect(page).to have_current_path('http://mantis.glaucia.base2.com.br/view_all_bug_page.php', url: true)
  end