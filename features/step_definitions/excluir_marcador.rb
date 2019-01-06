  Given("acessou o cadastro de marcadores") do
    @menu.gerenciar
    @marcador.gerenciarMarcador
  end
  
  When("abrir o cadastro do marcador {string}") do |nome_marcador|
    @marcador.selecionarMarcador(nome_marcador)
  end
  
  When("apagar marcador") do
    @marcador.apagarMarcador
  end
  
  When("confirmar a exclusão do cadastro") do
    @marcador.apagarMarcador
  end
  
  Then("o marcador {string} não será exibido na lista de marcadores") do |nome_marcador|
    expect(page.has_text?(nome_marcador)).to eq false
  end
  