Given("acessou o gerenciamento de campos personalizados") do
    @menu.gerenciar
    @campo_personalizado.gerenciarCampo
  end
  
  When("inserir o nome do campo personalizado {string}") do |campo_personalizado|
    @campo_personalizado.inserirNomeCampo(campo_personalizado)
  end
  
  When("cadastrar novo campo personalizado") do
    @campo_personalizado.cadastrarCampo
  end
  
  Then("será mostrada a mensagem {string}") do |mensagem|
    expect(page.has_text?(mensagem)). to eq true
  end
  
  