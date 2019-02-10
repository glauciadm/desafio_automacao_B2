Given("acessou o cadastro de perfís") do
    @menu.gerenciar
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

  Then("o perfil {string} será apagado") do |perfil|
    combo = find('#select-profile')
    expect(combo.has_text?(perfil)).to eq false  
  end
  