class GerenciarProjetos
    include Capybara::DSL

    def gerenciarProjetos
        find('a[href="/manage_proj_page.php"]').click
    end

    def criarProjeto
        click_button 'Criar Novo Projeto'
    end

    def preencherCampos(nomeProjeto, estado, visibilidade, descricao)
        find('#project-name').set nomeProjeto
        comboStatus = find('#project-status')
        comboStatus.find('option', text: estado).select_option
        comboVisb = find('#project-view-state')
        comboVisb.find('option', text: visibilidade).select_option
        find('#project-description').set descricao
    end

    def addProjeto
        click_button 'Adicionar projeto'
    end

    def localizarProjeto(nomeProjeto)
        click_link nomeProjeto
    end

    def apagarProjeto
        click_button 'Apagar Projeto'
    end

    def editarProjeto(visibilidade)
        comboVisb = find('#project-view-state')
        comboVisb.find('option', text: visibilidade).select_option
    end
    
    def atualizarProjeto
        click_button 'Atualizar Projeto'
    end


    def criarCategoria(nomeCat)
        find('input[name=name]').set nomeCat
    end

    def addCategoria
        click_button 'Adicionar Categoria'
    end

    def apagarCategoria(cat)
        within('.table.table-striped.table-bordered.table-condensed.table-hover tbody tr', text: cat) do
            click_button 'Apagar'
        end
    end

    def confirmarExclusãoCategoria
        find(:css, '#main-container > div.main-content > div.page-content > div > div > div.alert.alert-warning.center > form > input.btn.btn-primary.btn-white.btn-round').click
    end

    def alterarCategoria(cat)
        within('.table.table-striped.table-bordered.table-condensed.table-hover tbody tr', text: cat) do
            click_button 'Alterar'
        end
    end

    def atribuirUserCat(usuario)
        comboUser = find('#proj-category-assigned-to')
        comboUser.find('option', text: usuario ).select_option
    end

    def atualizarCategoria
        click_button 'Atualizar Categoria'
    end
    
end