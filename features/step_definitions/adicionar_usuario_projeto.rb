  Given("abriu a tela de gerenciamento de usuários") do
    @menu.gerenciar
    @user.gerenciarUser
  end
  
  When("acessar o cadastro do usuário {string}") do |nome_usuario|
    @user.selecionarUser(nome_usuario)
  end
  
  When("selecionar o projeto {string} para atribuição") do |projeto|
    @user.atribuirProjeto(projeto)
  end
  
  When("adicionar usuário") do
    @user.adicionarUsuarioProjeto
  end
  
  Then("o projeto {string} será exibido na lista de {string}") do |projeto, title|
    tr = find('table.table-bordered.table-condensed.table-striped tbody tr', text: title) 
    expect(tr.has_text?(projeto)). to eq true
  end