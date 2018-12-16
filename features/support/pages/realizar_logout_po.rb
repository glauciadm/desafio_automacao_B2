class LogoutPage
    include Capybara::DSL

    def logout
        find('a[href="/logout_page.php"]').click
    end
end