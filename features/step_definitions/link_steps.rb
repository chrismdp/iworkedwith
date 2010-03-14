Transform /table:email,comment/ do |table|
  link_info = table.hashes.first 
  return link_info[:email], link_info[:comment]
end

When /^I say I worked with someone$/ do |table|
  email, comment = table
  fill_in 'Person 2', :with => email
  fill_in 'Comment', :with => comment
  click_button 'Link'
end

Then /^I should see I worked with$/ do |table|
  email, comment = table
  response.should contain(email)
  response.should contain(comment)
end

