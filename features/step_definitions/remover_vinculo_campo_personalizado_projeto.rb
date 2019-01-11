  Given("acessou o cadastro do campo personalizado {string} que possui um projeto vinculado") do |campo_personalizado|
    @menu.gerenciar
    @campo_personalizado.gerenciarCampo
    @campo_personalizado.selecionarCampo(campo_personalizado)
  end
  
  When("remover o projeto vinculado") do
    @campo_personalizado.removerProjetoVinculado
  end
  
  When("confirmar a exclusão do projeto vínculado") do
    @campo_personalizado.confirmarExclusaoVinculo
  end
  
  Then("o sistema irá exibir a mensagem {string}") do |mensagem|
    expect(page.has_text?(mensagem)). to eq true
  end
  
  