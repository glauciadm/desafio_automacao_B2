   Given("o usuário acessou a tela de login") do   
     @login_page.acess
   end
 
   When("informar o nome do usuario {string}") do |usuario|
    @login_page.user(usuario)
   end
   
   When("enviar as informações") do
    @login_page.autentication
   end
   
   When("informar a senha {string}") do |senha|
    @login_page.password(senha)
   end
   
   When("autenticar usuario") do
    @login_page.autentication
   end
   
   Then("será direcionado para a página inicial") do
     expect(page).to have_current_path('http://mantis.glaucia.base2.com.br/my_view_page.php', url: true)
   end