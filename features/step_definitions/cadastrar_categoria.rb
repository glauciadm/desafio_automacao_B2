Given("acessou o gerenciamento de projetos") do
    @menu.gerenciar
    @categoria.gerenciarProjetos
  end
  
  When("informar o nome da categoria {string}") do |nomeCat|
    @categoria.criarCategoria(nomeCat)
  end
  
  When("adicionar a categoria") do
    @categoria.addCategoria
  end
  
  Then("{string} é exibida na lista de categorias") do |nomeCat|
    expect(page.has_text?(nomeCat)).to eq true
  end