Given("acessou o cadastro da tarefa de id {string}") do |idTarefa|
    @menu.verTarefas
    @tarefa.pesquisarTarefa(idTarefa)
  end
  
  When("enviar um lembrete") do
    @tarefa.enviarLembrete
  end
  
  When("selecionar o usuário {string}") do |nome_usuario|
    @tarefa.selecionarUserLembrete(nome_usuario)
  end
  
  When("inserir a mensagem {string}") do |mensagem|
    @tarefa.digitarLembrete(mensagem)
  end
  
  When("enviar o lembrete") do
    @tarefa.criarLembrete
  end
  
  Then("o sistema informa {string}") do |mensagem|
    expect(page.has_text?(mensagem)). to eq true
  end
  