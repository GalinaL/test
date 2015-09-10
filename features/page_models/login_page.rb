class LoginPage < PageActions

  def login_field
    @browser.find_element(:id, "UserName")
  end

  def password_field
    @browser.find_element(:id, "pwd")
  end

  def signin_button
    @browser.find_element(:xpath, "html/body/div[1]/table/tbody/tr/td[2]/div[2]/div/form/div/input[4]")
  end


end