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


After do |scenario| 
    nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '') #pegar o nome do arquivo e remover caracter especial
    nome = nome.tr(' ', '_').downcase! #substituir espaço por _ e deixar em letra minúscula
    shot = "log/screenshots/#{nome}.png" #definindo diretório da imagem e nome do arquivo

    page.save_screenshot(shot)
    embed(shot, 'image/png', 'Evidências') #incluindo a imagem no relatório
end