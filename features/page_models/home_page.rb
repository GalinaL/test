class HomePage < PageActions

  def path
    "dev.fortwarehouse.com:8950"
  end

  def login_button
    @browser.find_element(:xpath, "html/body/table[1]/tbody/tr[2]/td/table/tbody/tr/td[2]/b")
  end

  def calculate_price
    @browser.find_element(:xpath, ("//a[@class='quick-tools-solo--link quick-tools-solo--calcprice' and text()=\"Calculate a Price\"]"))
  end

  def zip_code_look_up_link
    @browser.find_element(:id, "ctl00_ContentPlaceHolder1_HyperLink2")
  end

  def post_office_locator_link
    @browser.find_element(:xpath, "//a[@href='https://www.usps.com/locator/welcome.htm']")
  end









end