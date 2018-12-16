Before do
    @login_page = LoginPage.new
    @logout = LogoutPage.new
    @user = GerenciarUsuario.new
    @projeto = GerenciarProjetos.new
    @menu = MenuItens.new
    @categoria = GerenciarProjetos.new
    #page.current_window.resize_to(1200, 800)
    #definir resolução para o teste
end

