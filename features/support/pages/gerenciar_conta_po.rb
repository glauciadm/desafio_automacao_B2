class GerenciarMinhaConta
    include Capybara::DSL

    def preencherNomeVerdadeiro(nomeVerdadeiro)
        find('#realname').set nomeVerdadeiro
    end

    def atualizarUsuario
        click_button 'Atualizar Usuário'
    end

end