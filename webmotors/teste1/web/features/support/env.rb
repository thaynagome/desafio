require 'capybara'
require 'capybara/cucumber'
require 'httparty'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'


Capybara.configure do |config|
        config.default_driver = :selenium_chrome
end

