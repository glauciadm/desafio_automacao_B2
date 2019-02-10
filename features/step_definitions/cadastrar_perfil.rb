  Given("acessou o menu de gerenciamento") do
    @menu.gerenciar
  end 
  
  When("acessar o cadastro de perfís") do
    @perfil.menuPerfis
  end
  
  When("preencher os campos obrigatórios {string}, {string} e {string}") do |plataforma, so, versao|
    @perfil.preencherCampos(plataforma, so, versao)
  end
  
  When("adicionar perfil") do
    @perfil.adicionarPerfil
  end

  Then("o perfil {string} criado será exibido na lista de seleção de perfis") do |plataforma|
    combo = find('#select-profile')
    expect(combo.has_text?(plataforma)). to eq true 
  end