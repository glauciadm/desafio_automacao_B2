class LoginPage
    include Capybara::DSL

    def acess
        visit '/login_page.php'
    end

    def user(usuario)
     find('#username').set usuario
    end

    def autentication     
     find('input[type="submit"]').click
    end

    def password(senha)
     find('#password').set senha
    end
    
end