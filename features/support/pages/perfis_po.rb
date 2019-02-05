class Perfis
    include Capybara::DSL

    def menuPerfis
        find('a[href="/manage_prof_menu_page.php"]').click     
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
      # find(:xpath, '//*[@id="account-profile-update-form"]/div/div[2]/div[1]/div/table/tbody/tr[3]/td[2]/label/span').click
        find(:css,'#account-profile-update-form > div > div.widget-body > div.widget-main.no-padding > div > table > tbody > tr:nth-child(3) > td:nth-child(2) > label > span').click
    end

    def enviarInfo
        click_button 'Enviar'
    end

    def selecionarPerfil(perfil)
        combo = find('#select-profile')
        combo.find('option', text: perfil).select_option
    end

    def editar
        find(:css, '#account-profile-update-form > div > div.widget-body > div.widget-main.no-padding > div > table > tbody > tr:nth-child(1) > td:nth-child(2) > label > span').click
    end

    def atualizarPerfil
        click_button 'Atualizar Perfil'
    end

    def editarCampos(os, descricao)
        find('input[name=os_build]').set os
        find(:xpath, '//*[@id="main-container"]/div[2]/div[2]/div/div/form/div/div[2]/div[1]/div/table/tbody/tr[4]/td/textarea').set descricao
    end

end