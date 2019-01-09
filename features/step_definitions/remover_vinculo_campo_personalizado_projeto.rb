Given("possui o cadastro do campo personalizado {string}") do |campo_personalizado|
    @menu.gerenciar
    @campo_personalizado.gerenciarCampo
    @campo_personalizado.selecionarCampo(campo_personalizado)
  end
  
  Given("o campo está vinculado a um projeto") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("remover o projeto vinculado") do
    @campo_personalizado.remover
  end
  
  When("confirmar a exclusão do vínculo") do
    pending # Write code here that turns the phrase above into concrete actions
  end