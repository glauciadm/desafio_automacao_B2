Given("acessou cadastro de perfis") do
    @menu.gerenciar
    @perfil.menuPerfis
  end
  
  When("marcar que deseja editar um perfil") do
    @perfil.editar
  end
  
  When("enviar informações") do
    @perfil.enviarInfo
  end

  When("atualizar os campos para {string}, {string}") do |os, descricao|
    @perfil.editarCampos(os, descricao)
  end
  
  When("atualizar o perfil") do
    @perfil.atualizarPerfil
  end
  
  Then("o sistema será direcionado para a pagina de cadastro de perfil") do
    expect(page).to have_current_path('http://mantis.glaucia.base2.com.br/manage_prof_menu_page.php', url: true)
  end
  