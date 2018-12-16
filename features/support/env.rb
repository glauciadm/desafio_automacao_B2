require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://mantis.glaucia.base2.com.br'
end

Capybara.default_max_wait_time = 5