Given("acessou a lista de categorias cadastradas") do
    @menu.gerenciar
    @categoria.gerenciarProjetos
  end
  
  When("atualizar a categoria {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("atribuir a categoria para o usuário {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("atualizar categoria") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("o sistema exibe na tela a mensagem {string}") do |mensagem|
    expect(page.has_text?(mensagem)). to eq true
  end