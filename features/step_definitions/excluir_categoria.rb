Given("acessou o cadastro das categorias") do
  @menu.gerenciar
  @categoria.gerenciarProjetos
end

When("apagar o cadastro da categoria {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("o sistema exibe a mensagem {string}") do |string|
  expect(page.has_text?(mensagem)). to eq true
end

Then("a categoria {string} não é exibida no cadastro de categoria") do |nomeCat|
  expect(page.has_text?(nomeCat)).to eq false
end
