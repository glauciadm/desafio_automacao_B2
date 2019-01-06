class GerenciarMarcador
    include Capybara::DSL

    def gerenciarMarcador
        find('a[href="/manage_tags_page.php"]').click
    end

    def preencherCampos(nome, descricao)
        find('#tag-name').set nome
        find('#tag-description').set descricao
    end
    
    def criarMarcador
        find('input[name=config_set]').click
    end        

    def selecionarMarcador(nome_marcador)
        click_link nome_marcador
    end

    def apagarMarcador
        click_button 'Apagar Marcador'
    end

    def atualizarMarcador
        click_button 'Atualizar Marcador'
    end

    def editarMarcador(novo_nome)
        find('#tag-name').set novo_nome
    end
end