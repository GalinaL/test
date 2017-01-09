class LoginPage < PageActions

  def login_field
    @browser.find_element(:id, "UserName")
  end

  def password_field
    @browser.find_element(:id, "pwd")
  end

  def signin_button
    @browser.find_element(:css, ".login > input:nth-child(11)")
  end


end