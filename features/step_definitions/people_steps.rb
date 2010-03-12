Given /^a user "([^\"]*)"$/ do |email|
  User.create! :email => email
end

