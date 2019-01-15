Given("acessou o cadastro do campo personalizado {string}") do |campo_personalizado|
    @menu.gerenciar
    @campo_personalizado.gerenciarCampo
    @campo_personalizado.selecionarCampo(campo_personalizado)
  end
  
  When("apagar campo personalizado") do
    @campo_personalizado.apagarCampo
  end
  
  When("confirmar a exclusão do campo personalizado") do
    @campo_personalizado.confirmarExclusao
  end
  
  Then("o campo {string} não será exibido na lista de campos personalizados") do |campo_personalizado|
    expect(page.has_text?(campo_personalizado)).to eq false
  end
  