class TokenAPI
    include Capybara::DSL

    def cadastroToken(nome_token)
        find('#token_name').set nome_token
    end

    def criarToken
        find(:css, '#account-create-api-token-form > div > div.widget-body > div.widget-toolbox.padding-8.clearfix > input').click
    end

    def revogarToken
        find(:css, '#revoke-api-token-form > fieldset > input.btn.btn-sm.btn-primary.btn-white.btn-round').click
    end
    
end