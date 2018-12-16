Given("acessou o cadastro de perfís") do
    @menu.administrator
    @menu.minhaConta
    @perfil.menuPerfis
  end
  
  When("informar que deseja apagar um perfil") do
    @perfil.apagar
  end
  
  When("selecionar o perfil {string}") do |string|
    
  end
  
  Then("o perfil será apagado") do
   
  end
  