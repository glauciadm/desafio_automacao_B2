When("alterar o projeto para {string}") do |visibilidade|
    @projeto.editarProjeto(visibilidade)   
  end
  
  When("atualizar o projeto") do
    @projeto.atualizarProjeto
  end
  
  Then("será exibida a tela de gerenciamento de projetos") do
    expect(page).to have_current_path('http://mantis.glaucia.base2.com.br/manage_proj_page.php', url: true)
  end