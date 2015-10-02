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
    # binding.pry
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
    @browser.find_element(:xpath, ".//*[@id='Zip']")
  end

  def company_email
    @browser.find_element(:id, "Email")
  end

  def company_address_button
    @browser.find_element(:id, "Same_as_Shipping")
  end

  def company_packages
    # binding.pry
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[73]/td/table/tbody/tr[2]/td[1]/select/option[3]").click
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[73]/td/table/tbody/tr[2]/td[2]/input[1]").click
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[73]/td/table/tbody/tr[2]/td[1]/select/option[30]").click
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[73]/td/table/tbody/tr[2]/td[2]/input[1]").click
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[73]/td/table/tbody/tr[2]/td[1]/select/option[53]").click
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[73]/td/table/tbody/tr[2]/td[2]/input[1]").click
  end

  def company_upload_format
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[77]/td[2]/select/option[6]")
  end

  def company_fulfilment_group
    @browser.find_element(:xpath, ".//*[@id='Default_750_Fulfillment_Group']/option[2]")
  end

  def company_create_button
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[139]/td/table/tbody/tr[1]/td[2]/input")
  end

  def company_name
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[6]/td[2]")
  end

  def shut_donw_alert
    @browser.switch_to().alert().accept()
  end

  def delete_company_button
    @browser.find_element(:xpath, ".//*[@id='Company_Form']/table/tbody/tr[140]/td/table/tbody/tr/td/input[1]").click
    shut_donw_alert
  end

end