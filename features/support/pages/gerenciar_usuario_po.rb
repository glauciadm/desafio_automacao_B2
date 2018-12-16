class GerenciarUsuario
    include Capybara::DSL

    def gerenciarUser
        find('a[href="/manage_user_page.php"]').click
    end

    def criarNovaConta
        click_button 'Criar nova conta'
    end
    
    def preencherCampos(nomeUsuario, nomeVerdadeiro, email, nivelAcesso)
        find('#user-username').set nomeUsuario
        find('#user-realname').set nomeVerdadeiro
        find('#email-field').set email
        combo = find('#user-access-level')
        combo.find('option', text: nivelAcesso).select_option
    end

    def criarUsuario
       find('.btn.btn-primary.btn-white.btn-round').click
    end
    

    def localizarUser(nome_usuario)
        click_link nome_usuario
    end

    def apagarUser
        click_button 'Apagar Usuário'
    end

    def confirmarExclusaoUser
        click_button 'Apagar Conta'
    end


end
