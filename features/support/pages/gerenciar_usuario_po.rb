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

    def pesquisarUser(nome_usuario)
        find('#username').set nome_usuario
        click_button 'Gerenciar Usuário'
    end

    def selecionarUser(nome_usuario)
        click_link nome_usuario
    end

    def redefinirSenha
        click_button 'Redefinir Senha'
    end

    def representarUser
        click_button 'Representar Usuário'
    end

    def prosseguirRepresentacao
        find(:css, '#main-container > div.main-content > div.page-content > div > div > div > div.alert.alert-success.center > div > a').click
    end

    def desabilitarUser
        find(:css, '#edit-user-form > div > div.widget-body > div.widget-main.no-padding > div > div > table > tbody > tr:nth-child(5) > td:nth-child(2) > label > span').click
    end

    def atribuirProjeto(projeto)
        combo = find('#add-user-project-id')
        combo.find('option', text: projeto).select_option
    end

    def adicionarUsuarioProjeto
        click_button 'Adicionar Usuário'
    end

    def removerUsuarioProjeto(projeto)
        within('table.table-bordered.table-condensed.table-striped tbody tr', text: 'Projetos Atribuídos') do
            click_button 'Remover'
        end
    end

    def confirmarRemocaoUsuarioProjeto
        click_button 'Remover Usuário'
    end

end

