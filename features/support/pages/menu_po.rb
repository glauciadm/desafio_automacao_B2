class MenuItens
    include Capybara::DSL

    def minhaVisao
       # find('a[href="/my_view_page.php"]').click
       within('#sidebar')
       find('a[href="/my_view_page.php"]').click
      # find('.menu-text').click
    end

    def verTarefas
        find('a[href="/view_all_bug_page.php"]').click
    end

    def criarTarefa
        find('a[href="/bug_report_page.php"]').click
    end

    def gerenciar
        find('a[href="/manage_overview_page.php"]').click
    end

    def administrator
        find('.user-info').click
    end

    def projeto
        find('a[href="#"]').click
    end

    def minhaConta
        click_link 'Minha Conta'
    end

end
