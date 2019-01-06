Before do
    @login_page = LoginPage.new
    @logout = LogoutPage.new
    @user = GerenciarUsuario.new
    @projeto = GerenciarProjetos.new
    @menu = MenuItens.new
    @categoria = GerenciarProjetos.new
    @perfil = Perfis.new
    @tarefa = GerenciarTarefas.new
    @conta = GerenciarMinhaConta.new
    @marcador = GerenciarMarcador.new
    @campo_personalizado = GerenciarCampoPersonalizado.new
    #page.current_window.resize_to(1200, 800)
    #definir resolução para o teste
end

