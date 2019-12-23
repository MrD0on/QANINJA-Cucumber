require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  @browser = ENV["BROWSER"]
  case @browser
  when "chrome"
    @driver = :selenium_chrome
  when "firefox"
    @driver = :selenium
  when "chrome_headless"
    @driver = :chrome_headless
  when "firefox_hedless"
    @driver = :firefox_headless
  end

  config.default_driver = @driver
  config.app_host = "http://localhost:3000"
  config.default_max_wait_time = 10
end
