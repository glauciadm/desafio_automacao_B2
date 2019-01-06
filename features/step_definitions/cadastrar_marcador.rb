Given("acessou o gerenciamento de marcadores") do
    @menu.gerenciar
    @marcador.gerenciarMarcador
  end
  
  When("preencher os campos {string} e {string}") do |nome, descricao|
    @marcador.preencherCampos(nome, descricao)
  end
  
  When("criar marcador") do
    @marcador.criarMarcador
  end
  
  Then("o marcador {string} será exibido na lista de marcadores") do |nome|
    expect(page.has_text?(nome)).to eq true
  end
  
  