class AdminPage < PageActions

  def admin_dropdown
    @browser.find_element(:xpath, ".//*[@id='qm0']/a[5]")
  end

def create_company
  admin_dropdown.click
  @browser.find_element(:xpath, ".//*[@id='qm0']/div[4]/a[3]").click
  @browser.find_element(:xpath,"html/body/div[1]/div[1]/table/tbody/tr/td/a[3]/img").click
  @browser.find_element(:id, "Company_Name")
end

  def company_type
    binding.pry
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[10]/td[2]/select/option[9]")
  end

  def company_street
    # binding.pry
    @browser.find_element(:id, "Street_1")
  end

  def company_city
    # binding.pry
    @browser.find_element(:id, "City")
  end

  def company_state
    @browser.find_element(:xpath, ".//*[@id='State']/option[8]")
  end

  def company_zip
    # binding.pry
    @browser.find_element(:id, "Billing_Zip")
  end

  def company_email
    @browser.find_element(:id, "Email")
  end

  def company_address_button
    @browser.find_element(:id, "Same_as_Shipping")
  end

  def company_packages
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[72]/td/table/tbody/tr[2]/td[1]/select/option[52]").click
    @browser.find_element(:css, "input.Button").click
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[72]/td/table/tbody/tr[2]/td[1]/select/option[73]").click
    @browser.find_element(:css, "input.Button").click
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[72]/td/table/tbody/tr[2]/td[1]/select/option[56]").click
    @browser.find_element(:css, "input.Button").click
  end
end