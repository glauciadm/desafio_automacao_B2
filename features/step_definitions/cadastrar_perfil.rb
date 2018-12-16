Given("acessou minha conta") do
    @menu.administrator
    @menu.minhaConta
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

  Then("o perfil será criado") do
    
  end