class Perfis
    include Capybara::DSL

    def menuPerfis
        find('a[href="/account_prof_menu_page.php"]').click
    end

    def preencherCampos(plataforma, so, versao)
        find('#platform').set plataforma
        find('#os').set so
        find('#os-version').set versao
    end

    def adicionarPerfil
        click_button 'Adicionar Perfil'
    end

    def apagar
        find('#action-delete').click
    end

    def enviarInfo
      #  click_button 'Enviar'
    end

end
