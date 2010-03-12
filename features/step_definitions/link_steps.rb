When /^I make a link to "([^\"]*)"$/ do |person|
  fill_in 'Person 2', :with => person
  click_button "Link"
end

Then /^I should see a connection to "([^\"]*)"$/ do |person|
  response.should have_text(/person/)
end
