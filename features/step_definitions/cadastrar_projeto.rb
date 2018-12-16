When("gerenciar projetos") do
   @menu.gerenciar
   @projeto.gerenciarProjetos
  end
  
  When("criar novo projeto") do
    @projeto.criarProjeto
  end
  
  When("preencher os campos {string}, {string}, {string} e {string}") do |nomeProjeto, estado, visibilidade, descricao|
    @projeto.preencherCampos(nomeProjeto, estado, visibilidade, descricao)
  end
  
  When("adicionar projeto") do
    @projeto.addProjeto
  end
  
  Then("será exibida mensagem {string}") do |string|
    expect(page.has_text?('Operação realizada com sucesso.')).to eq true
   end