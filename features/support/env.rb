require 'cucumber'
require 'cucumber-api'
require 'securerandom'
require 'httparty'
require 'dotenv'

Dotenv.load

Before do
  @USER_AGENT = ENV['USER_AGENT']
  @TIMEOUT = 480
  @BASE_URL = ENV['BASE_URL'] 
  puts "Host: #{@BASE_URL}, user agent: #{@USER_AGENT}"
end

After do |scenario|
  if scenario.failed?
    puts scenario
  end
end