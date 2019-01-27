Given("abriu o gerenciamento de projetos") do                                
    @menu.gerenciar
    @categoria.gerenciarProjetos
  end                                                                          
                                                                               
  When("inserir o nome da categoria {string}") do |nomeCat|                     
    @categoria.criarCategoria(nomeCat)
  end                                                                          
                                                                               
  When("adicionar e editar categoria") do                                      
    @categoria.addEditCategoria
  end                                                                          
                                                                               
  When("atribuir a nova categoria ao usuario {string}") do |usuario|            
    @categoria.atribuirUserCat(usuario)
  end                                                                          
                                                                               
  When("atualizar a categoria") do                                             
    @categoria.atualizarCategoria
  end                                                                          
                                                                               
  Then("a categoria criada {string} é exibida na lista de categorias") do |nomeCat|             
    expect(page.has_text?(nomeCat)).to eq true
  end