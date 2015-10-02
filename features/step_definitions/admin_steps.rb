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

Then(/^I type email address as "([^"]*)"$/) do |email|
  usps.admin_page.company_email.send_keys email
end

Then(/^I click on radio button Same as Shipping$/) do
  usps.admin_page.company_address_button.click
end

Then(/^I select a few package types$/) do
  usps.admin_page.company_packages
end

Then(/^I select upload format$/) do
  usps.admin_page.company_upload_format.click
end

Then(/^I select Default Fulfillment Group$/) do
  usps.admin_page.company_fulfilment_group.click
end

And(/^I click on a creat button$/) do
  usps.admin_page.company_create_button.click
end

# And(/^I should see a new company$/) do
#   # expect(usps.admin_page.company_fulfilment_group.text).to be ==
# end

# And(/^I should be signed\-in as a user "([^"]*)"$/) do |name|
#   expect(usps.home_page.login_button.text).to be == name
#
# end

And(/^I should see a new company name "([^"]*)" in the company list$/) do |company_name|
  expect(usps.admin_page.company_name.text).to be == company_name
end

And(/^I delete the company w_automation$/) do
  usps.admin_page.delete_company_button
end

Then(/^I have to make sure that the company "([^"]*)" is not exist anymore$/) do |deleted_company_name|
  pending
end

And(/^I create a new company "([^"]*)"$/) do |created_company_name|
  steps %{
    Then I type company name as "#{created_company_name}"
    Then I select Company Type Seller
    Then I type Street address as "2035 California drive"
    Then I type City "Mountain View"
    Then I select the company state California
    Then I type zip "94040"
    Then I type email address as "Galina@fortsystems.com"
    Then I click on radio button Same as Shipping
    Then I select a few package types
    Then I select upload format
    Then I select Default Fulfillment Group
    And I click on a creat button
    And I should see a new company name "w_automation" in the company list
    }
end
