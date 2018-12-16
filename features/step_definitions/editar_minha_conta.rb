Given("acessou a conta de usuário") do
    @menu.administrator
    @menu.minhaConta
  end
  
  When("editar o nome verdadeiro para {string}") do |nomeVerdadeiro|
    @conta.preencherNomeVerdadeiro(nomeVerdadeiro)
  end
  
  When("atualizar usuário") do
    @conta.atualizarUsuario
  end
  
  Then("será exibida a seguinte mensagem {string}") do |mensagem|
    expect(page.has_text?(mensagem)).to eq true
  end
  