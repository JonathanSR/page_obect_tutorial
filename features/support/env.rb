require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'
require_relative '../../page_objects/all_page_objects'
require 'pry'

Capybara.register_driver :selenium do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => {'args' => ['--start-maximized'] })
  Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
end

Capybara.default_driver = :selenium