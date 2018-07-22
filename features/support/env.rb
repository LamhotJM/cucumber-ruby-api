require 'cucumber-api'
require 'dotenv'

Dotenv.load

Before do
  puts "Start Cucumber Automated API Testing"
end

After do |scenario|
  if scenario.failed?
    puts scenario
  end
  puts "End Cucumber Automated API Testing"
end
