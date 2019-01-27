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

    def anotacaoPrivada
        find(:xpath, '//*[@id="bugnote_add"]/div[2]/div[1]/div/table/tbody/tr[1]/td/label/span').click
    end

    def inserirAnexoAnotacao
        filename = 'teste.txt'
        file = File.join(Dir.pwd, filename)

        find('#bugnote-attach-files > td > div').send_keys file

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
        find('input[name=query_name]').set nome_filtro
    end

    def filtroPublico
        find(:css, '#save-filter > div.widget-body > div > form.form-inline > div:nth-child(6) > label > span').click
    end

    def salvarNomeFiltro
        find(:css, '#save-filter > div.widget-body > div > form.form-inline > input.btn.btn-primary.btn-white.btn-round').click
    end

    def buttonFechar
        click_button 'Fechar'
    end

    def formFechar(resolucao, atribuido, visibilidade, anotacao)
        comboResolucao = find('select[name=resolution]').set resolucao
        comboResolucao.find('option', text: resolucao).select_option

        comboAtribuido = find('select[name=handler_id]').set atribuido
        comboAtribuido.find('option', text: atribuido).select_option

        if (visibilidade == true)
            find(:css, '#bug-change-status-form > fieldset >  > div.widdivget-body > div.widget-main.no-padding > div > table > tbody > tr:nth-child(4) > td > label').click
        end

        find('#bugnote_text').set anotacao
    end
    
    def fecharTarefa
        click_button 'Fechar Tarefa'
    end

    def selecionarTodasTarefas
        find(:css, '#bug_action > div > div.widget-body > div.widget-main.no-padding > div.widget-toolbox.padding-8.clearfix > div.form-inline.pull-left > label > span').click
        sleep (2)
    end

    def moverOK
        click_button 'OK'
    end

    def selecionarProjetoMove(nomeProjeto)
        combo = find('select[name=project_id]').set nomeProjeto
        combo = find('option', text: nomeProjeto).select_option
    end

    def moverTarefas
        click_button 'Mover Tarefas'
    end

    def monitorarTarefa
        click_button 'Monitorar'
    end

    def pararMonitoramentoTarefa
        click_button 'Parar de Monitorar'
    end

    def inserirMarcador(marcador)
        combo = find('#tag_select').set marcador
        combo = find('option', text: marcador).select_option
    end

    def aplicarMarcador
        find(:css, '#main-container > div.main-content > div.page-content > div > div:nth-child(1) > div > div.widget-body > div.widget-main.no-padding > div > table > tbody > tr.noprint > td > form > input.btn.btn-primary.btn-sm.btn-white.btn-round').click
    end

    def menuHamburguer
        find(:css, '#filter > div.widget-header.widget-header-small > div:nth-child(2) > div > a > i').click
    end

    def gerenciarFiltro
        find('a[href="manage_filter_page.php"]').click
    end

    def deletarFiltro(filtro)
        within('table.table-striped.table-bordered.table-condensed.table-hover tbody tr', text: filtro) do
            click_button 'Deletar'
        end
    end

    def apagarFiltro
        click_button 'Apagar Filtro'
    end

    def alterarFiltro(filtro)
        within('table.table-striped.table-bordered.table-condensed.table-hover tbody tr', text: filtro) do
            click_button 'Alterar'
        end
    end

    def atualizarFiltro
        click_button 'Atualizar Filtro'
    end

    def editarNomeFiltro(filtro)
        find('input[name=filter_name]').set filtro
    end

    def marcarPegajoso
        find(:css, '#main-container > div.main-content > div.page-content > div > div:nth-child(1) > div > div.widget-body > div.widget-main.no-padding > div > table > tfoot > tr > td > div > div:nth-child(5) > form > fieldset > input.btn.btn-primary.btn-sm.btn-white.btn-round').click
    end

    def desmarcarPegajoso
        find(:css, '#main-container > div.main-content > div.page-content > div > div:nth-child(1) > div > div.widget-body > div.widget-main.no-padding > div > table > tfoot > tr > td > div > div:nth-child(5) > form > fieldset > input.btn.btn-primary.btn-sm.btn-white.btn-round').click
    end

    def criarClone
        click_button 'Criar Clone'
    end

    def editarResumoTarefa(resumo)
        find('#summary').set resumo
    end

    def confirmarTarefa
        click_button 'Confirmar Tarefa'
    end

    def selecionarStatusTarefa(status)
        combo = find(:css, '#main-container > div.main-content > div.page-content > div > div:nth-child(1) > div > div.widget-body > div.widget-main.no-padding > div > table > tfoot > tr > td > div > div:nth-child(3) > form > select').set status
        combo.find('option', text: status).select_option
    end
    
    def alterarStatus
        click_button 'Alterar Status:'
    end

end