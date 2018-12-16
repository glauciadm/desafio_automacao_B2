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


end