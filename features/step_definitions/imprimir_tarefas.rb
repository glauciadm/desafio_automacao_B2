Given("acessou o quadro de tarefas") do
    @menu.verTarefas
  end
  
  When("imprimir tarefas") do
    @tarefa.imprimir
  end
  
  Then("será exibido um relatório com todas as tarefas") do
    expect(page).to have_current_path('http://mantis.glaucia.base2.com.br/print_all_bug_page.php', url: true)
  end
  