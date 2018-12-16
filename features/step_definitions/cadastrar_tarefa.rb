When("acessar o menu de criar tarefas") do
  @menu.criarTarefa
  end
  
  When("preencher os campos {string}, {string}, {string}, {string}, {string}") do |categoria, gravidade, prioridade, resumo, descricao|
    @tarefa.preencherCampos(categoria, gravidade, prioridade, resumo, descricao)
  end
  
  When("criar nova tarefa") do
    @tarefa.criarNovaTarefa
  end