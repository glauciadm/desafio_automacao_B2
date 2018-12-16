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

    def criarCategoria(nomeCat)
        find('input[name=name]').set nomeCat
    end

    def addCategoria
        click_button 'Adicionar Categoria'
    end



end