Given("acessou o cadastro de perfís") do
    @menu.administrator
    @menu.minhaConta
    @perfil.menuPerfis
  end
  
  When("informar que deseja apagar um perfil") do
    @perfil.apagar
    sleep(2)
  end
  
  When("selecionar o perfil {string}") do |perfil|
    @perfil.selecionarPerfil(perfil)
  end  
  When("salvar as informações") do
    @perfil.enviarInfo
  end

  Then("o perfil será apagado") do
   
  end
  