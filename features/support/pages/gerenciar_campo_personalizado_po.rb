class GerenciarCampoPersonalizado
    include Capybara::DSL

    def gerenciarCampo
        find('a[href="/manage_custom_field_page.php"]').click
    end

    def inserirNomeCampo(campo_personalizado)
        find(:css, '#main-container > div.main-content > div.page-content > div > div > div.widget-box.widget-color-blue2 > div.widget-body > div.widget-toolbox.padding-8.clearfix > form > fieldset > input.input-sm').set campo_personalizado
    end

    def cadastrarCampo
        click_button 'Novo Campo Personalizado'
    end

    def atualizarCampo
        click_button 'Atualizar Campo Personalizado'
    end

    def selecionarCampo(campo_personalizado)
        click_link campo_personalizado
    end

    def editarCampo(tipo, acessoEscrita, mostrarAoCriarTarefa)
        comboTipo = find('#custom-field-type')
        comboTipo.find('option', text: tipo).select_option

        comboAcesso = find('#custom-field-access-level-rw')
        comboAcesso.find('option', text: acessoEscrita).select_option

        if (mostrarAoCriarTarefa = true) 
        find(:css, '#manage-custom-field-update-form > div > div.widget-body > div > div > table > tbody > tr:nth-child(11) > td:nth-child(2) > label > span').click
        end 
    end

    def apagarCampo
        click_button 'Apagar Campo Personalizado'
    end

    def confirmarExclusao
        click_button 'Apagar Campo'
    end

    def selecionarProjeto(projeto)
        comboProjeto = find('#custom-field-project-id')
        comboProjeto.find('option', text: projeto).select_option
    end

    def vincularCampo
        click_button 'Vincular Campo Personalizado'
    end

    def removerProjetoVinculado    
        click_link 'Remover'
    end

    def confirmarExclusaoVinculo
        click_button 'Remover Campo'
    end

end