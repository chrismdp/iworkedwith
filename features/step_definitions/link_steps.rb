When /^I make a link to "([^\"]*)"$/ do |person|
  fill_in 'Person 2', :with => person
  click_button "Link"
end

Then /^I should see a connection to "([^\"]*)"$/ do |person|
  response.should contain(person)
end

When /^I make a link to "([^\"]*)" with$/ do |person, comment|
  fill_in 'Person 2', :with => person
  fill_in 'Comment', :with => comment
  click_button "Link"
end

Then /^I should see a connection to "([^\"]*)" with$/ do |person, comment|
  response.should contain(person)
  response.should contain(comment)
end

