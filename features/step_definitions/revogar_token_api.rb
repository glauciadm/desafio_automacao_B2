Given("acessou a lista de tokens API") do
    @menu.administrator
    @menu.minhaConta
    @menu.tokens
  end
  
  When("revogar o token {string}") do |nome_token|
    @token.revogarToken(nome_token)
  end
  
  Then("o sistema exibe uma mensagem informando que o token {string} foi revogado") do |nome_token|
    expect(page.has_text?('O Token API "' +nome_token+ '" foi revogado')). to eq true
  end