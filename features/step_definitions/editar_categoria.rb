Given("acessou a lista de categorias cadastradas") do
    @menu.gerenciar
    @categoria.gerenciarProjetos
  end
  
  When("atualizar a categoria {string}") do |cat|
    @categoria.alterarCategoria(cat)
    sleep (2)
  end
  
  When("atribuir a categoria para o usuário {string}") do |usuario|
    @categoria.atribuirUserCat(usuario)
    sleep (2)
  end
  
  When("atualizar categoria") do
    @categoria.atualizarCategoria
  end
  
  Then("o sistema exibe na tela a mensagem {string}") do |mensagem|
    expect(page.has_text?(mensagem)). to eq true
  end