class USPS < PageActions

  def home_page
    @home_page ||= HomePage.new @browser
  end

  def login_page
    @login_page ||= LoginPage.new @browser
  end

  def find_zip_code_page
    @find_zip_code_page ||= FindZipCodePage.new @browser
  end

  def product_page
    @product_page ||= ProductPage.new @browser
  end

end