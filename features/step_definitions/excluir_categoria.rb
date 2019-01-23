Given("acessou o cadastro das categorias") do
  @menu.gerenciar
  @categoria.gerenciarProjetos
end

When("apagar o cadastro da categoria {string}") do |cat|
  @categoria.apagarCategoria(cat)
  sleep 2
end

When("confirmar a exclusão da categoria selecionada") do
  @categoria.confirmarExclusãoCategoria
  sleep 2
end

Then("a categoria {string} não é exibida no cadastro de categoria") do |cat|
  expect(page.has_text?(cat)).to eq false
end
