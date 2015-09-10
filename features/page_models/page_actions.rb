class PageActions

  def initialize browser
    @browser = browser
  end

  def visit
    @browser.navigate.to build_url
  end

  def build_url
    #original location for path: HomePage class
    initial_url = self.path
    #initial_url == "http://www.usps.com"
    initial_url.gsub!("dev.fortwarehouse.com:8950", get_environment)
    # initial_url.gsub!("dev.fortwarehouse.com:8950", "dev.fortwarehouse.com:8950")
   end


end