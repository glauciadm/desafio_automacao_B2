Given("acessou o menu de tokens API") do
    @menu.administrator
    @menu.minhaConta
    @menu.tokens
  end
  
  When("inserir o nome do token {string}") do |nome_token|
    @token.cadastroToken(nome_token)
  end
  
  When("criar token API") do
    @token.criarToken
  end

  Then("será exibido {string}") do |mensagem|
    expect(page.has_text?(mensagem)). to eq true
  end  