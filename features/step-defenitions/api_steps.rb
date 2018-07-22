Given /^I open the Google search page$/ do
  response = HTTParty.get("#{@BASE_URL}/api/v1/versions/httparty.json")
  puts response
end

Given /^I search for "(.*?)"$/ do |search_term|
  puts "hello"
end

Then /^I should see the results page$/ do
  puts "hello"
end
