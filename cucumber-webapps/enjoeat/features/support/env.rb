require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://enjoeat-sp4.herokuapp.com"
  config.default_max_wait_time = 10
end
