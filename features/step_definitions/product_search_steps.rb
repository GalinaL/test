Then(/^I select "([^"]*)" from products drop down list$/) do |product_search|
  usps.product_page.select_products product_search
end

And(/^I should see the page title "([^"]*)"$/) do |page_title|
  expect(usps.product_page.verify_page_title.text).to be == page_title
end

Then(/^I select all Moraga products$/) do
  usps.product_page.search_for_products
end