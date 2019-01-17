class GerenciarTarefas
    include Capybara::DSL

    def preencherCampos(categoria, gravidade, prioridade, resumo, descricao)
        comboCat = find('#category_id')
        comboCat.find('option', text: categoria).select_option
        comboGrav = find('#severity')
        comboGrav.find('option', text: gravidade).select_option
        comboPrio = find('#priority')
        comboPrio.find('option', text: prioridade).select_option
        find('#summary').set resumo
        find('#description').set descricao
    end

    def criarNovaTarefa
        click_button 'Criar Nova Tarefa'
    end

    def imprimir
        find('a[href="print_all_bug_page.php"]').click
    end

    def pesquisarTarefa(idTarefa)
        find('input[name=bug_id]').set idTarefa
        find('input[name=bug_id]').send_keys(:enter)
    end

    def apagarTarefa
        click_button 'Apagar'
    end

    def confirmarExclusaoTarefa
        click_button 'Apagar Tarefas'
    end

    def enviarLembrete
        find(:css, '#main-container > div.main-content > div.page-content > div > div:nth-child(1) > div > div.widget-body > div.widget-toolbox.padding-8.clearfix.noprint > div.btn-group.pull-left > a:nth-child(1)').click
    end

    def selecionarUserLembrete(nome_usuario)
        comboUser = find('#recipient')
        comboUser.find('option', text: nome_usuario).select_option
    end

    def digitarLembrete(mensagem)
        find('#send-reminder-div > form > div > div.widget-body > div.widget-main.no-padding > div > table > tbody > tr > td.center > textarea').set mensagem
    end

    def criarLembrete
        click_button 'Enviar'
    end

    def abrirTarefa(nome_tarefa)
        click_link nome_tarefa
    end

    def textoAnotacao(anotacao)
        find('#bugnote_text').set anotacao
    end

    def adicionarAnotacao
        click_button 'Adicionar Anotação'
    end

    def inserirAnexoAnotacao
        find(:css, '#bugnote-attach-files > td > div > i').click

        attach_file(File.join('teste', 'teste.txt'))

        #attach_file(:csv_file, File.join(RAILS_ROOT, 'features', 'upload-files', 'products_csv_ok.csv'))

    end

    def filtroPrioridade(prioridade)
        find(:css, '#show_priority_filter').click
        comboPriori = find(:css, '#show_priority_filter_target > select')
        comboPriori.find('option', text: prioridade).select_option
    end

    def filtroVisibilidade(visibilidade)
        find(:css, '#view_state_filter').click
        comboVisi = find(:css, '#view_state_filter_target > select')
        comboVisi.find('option', text: visibilidade).select_option
    end    

    def salvarFiltroAtual
        find(:css, '#filter > div.widget-toolbox.padding-8.clearfix > div.btn-toolbar.pull-right > div > form:nth-child(1) > input').click
    end

    def nomeFiltro(nome_filtro)
        find('input[name=query_name').set nome_filtro
    end

    def filtroPublico
        find(:css, '#save-filter > div.widget-body > div > form.form-inline > div:nth-child(6) > label > span').click
    end

    def salvarNomeFiltro
        find(:css, '#save-filter > div.widget-body > div > form.form-inline > input.btn.btn-primary.btn-white.btn-round').click
    end
end