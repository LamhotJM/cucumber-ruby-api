require 'capybara/cucumber'
require 'capybara/rspec'
require 'securerandom'
require 'dotenv'

Dotenv.load

Before do
  @client_id = ENV['API_CLIENT_ID']
  @client_secret = ENV['API_CLIENT_SECRET']
  @accounts_url = ENV['ACCOUNTS_URL']
  @omniscience_url = ENV['OMNISCIENCE_URL']
  @user_agent = ENV['MOBILE_USER_AGENT'] || 'android'
  @api = true
  @timeout = 480
  @api_url = ENV['API_URL'] || ENV['API_SMOKE_TEST_URL']
  @apiv4_url = ENV['APIV4_URL'] || ENV['APIV4_SMOKE_TEST_URL']
  puts "Host       : #{@api_url}"
  puts "Host v4    : #{@apiv4_url}"
  puts "Accounts   : #{@accounts_url}"
  puts "User-Agent : #{@user_agent}"
end

After do |scenario|
  if scenario.failed?
    timestamp = "#{Time.now.getutc}"
    screenshot_name = "screenshot-#{scenario}-#{timestamp}.png"
    screenshot_path = "#{screenshot_name}"
    Capybara.page.save_screenshot(screenshot_path)
  end
end