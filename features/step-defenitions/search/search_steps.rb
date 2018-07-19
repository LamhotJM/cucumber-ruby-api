Given /^I open the Google search page$/ do
  visit "/"
end

Given /^I search for "(.*?)"$/ do |search_term|
  @page_search = SearchPage.new
  @page_search.search(search_term)
end

Then /^I should see the results page$/ do
  expect(@page_search).to have_search_field
end
