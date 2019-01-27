class TokenAPI
    include Capybara::DSL

    def cadastroToken(nome_token)
        find('#token_name').set nome_token
    end

    def criarToken
        find(:css, '#account-create-api-token-form > div > div.widget-body > div.widget-toolbox.padding-8.clearfix > input').click
    end

    def revogarToken(nome_token)
        within('table.table-bordered.table-condensed.table-striped tbody tr', text: nome_token) do
            click_button 'Revogar'
        end
    end
    
end