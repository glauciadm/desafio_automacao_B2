Given("acessou cadastro de marcadores") do
    @menu.gerenciar
    @marcador.gerenciarMarcador
  end
  
  Given("abriu o cadastro do marcador {string}") do |nome_marcador|
    @marcador.selecionarMarcador(nome_marcador)
  end
  
  When("atualizar o marcador") do
    @marcador.atualizarMarcador
  end
  
  When("alterar o nome do marcador para {string}") do |novo_nome|
    @marcador.editarMarcador(novo_nome)
  end
  
  When("atualizar marcador") do
    @marcador.atualizarMarcador
  end

  Then("será exibida a tela com o novo nome {string}") do |novo_nome|
    expect(page.has_text?('Detalhes do marcador: ' + novo_nome)). to eq true
  end