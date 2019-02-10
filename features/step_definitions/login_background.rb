@login
Given("o usuário está logado no sistema") do
    @login_page.acess
    @login_page.user('administrator')
    @login_page.autentication
    @login_page.password('duarte')
    @login_page.autentication
  end