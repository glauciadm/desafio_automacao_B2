Given("abriu o cadastro do campo personalizado {string}") do |campo_personalizado|
    @menu.gerenciar
    @campo_personalizado.gerenciarCampo
    @campo_personalizado.selecionarCampo(campo_personalizado)
  end
  
  When("preencher os campos {string}, {string}, {string}") do |tipo, acessoEscrita, mostrarAoCriarTarefa|
    @campo_personalizado.editarCampo(tipo, acessoEscrita, mostrarAoCriarTarefa)
  end
  
  When("atualizar campo personalizado") do
    @campo_personalizado.atualizarCampo
  end
  
  Then("o campo atualizado {string} será exibido na lista de campos personalizados") do |campo_personalizado|
    expect(page.has_text?(campo_personalizado)).to eq true
  end