Given("selecionou o cadastro do campo personalizado {string}") do |campo_personalizado|
    @menu.gerenciar
    @campo_personalizado.gerenciarCampo
    @campo_personalizado.selecionarCampo(campo_personalizado)
  end
  
  When("selecionar o projeto {string}") do |projeto|
    @campo_personalizado.selecionarProjeto(projeto)
  end
  
  When("vincular campo ao projeto") do
    @campo_personalizado.vincularCampo
  end
  
  Then("será exibido o botão {string} para desvincular o projeto") do |botao|
    expect(page.has_text?(botao)).to eq true
  end
  