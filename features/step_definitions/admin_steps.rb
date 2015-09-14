Then(/^I type company name as "([^"]*)"$/) do |company|
  usps.admin_page.create_company.send_keys company
end

Then(/^I select Company Type Seller$/) do
  usps.admin_page.company_type.click
end

Then(/^I type Street address as "([^"]*)"$/) do |company_street|
  usps.admin_page.company_street.send_keys company_street
end

Then(/^I type City "([^"]*)"$/) do |city|
  usps.admin_page.company_city.send_keys city
end

Then(/^I select the company state California$/) do
  usps.admin_page.company_state.click
end

Then(/^I type zip "([^"]*)"$/) do |zip|
  usps.admin_page.company_zip.send_keys zip
end

Then(/^I type email adress as "([^"]*)"$/) do |email|
  usps.admin_page.company_email.send_keys email
end

Then(/^I click on radio button Same as Shipping$/) do
  usps.admin_page.company_address_button.click
end

Then(/^I select a few package types$/) do
  usps.admin_page.company_packages
end

Then(/^I select upload format (\d+)$/) do
  pending
end

Then(/^I select Default Fulfillment Group$/) do
  pending
end

And(/^I click on a creat button$/) do
  pending
end

And(/^I should see a new company$/) do
  pending
end
