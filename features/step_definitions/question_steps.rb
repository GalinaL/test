Given(/^I navigate$/) do
  create_browser
  @browser.navigate.to("https://login.bigcommerce.com/login")
  @browser.find_element(:id, "user_email").send_keys "bcqeinterview@gmail.com"
  @browser.find_element(:id, "user_password").send_keys "testing12345"
  @browser.find_element(:xpath, ".//*[@id='new_user']/div[5]/div/input").click
  @browser.navigate.to("https://store-focjf.mybigcommerce.com/manage/customers/add")
  sleep 2
  # @browser.find_element(:id, "custFirstName").send_keys "stefan balda"
  # @browser.find_element(:xpath, ".//*[@id='custFirstName']").send_keys "stefan balda"
  # menu = @browser.find_element(:xpath, ".//*[@id='div0']").hidden=false
  # @browser.action.move_to(menu).hidden=false
  # submenu = @browser.find_element(:xpath, ".//*[@id='div0']/fieldset[1]/div")
  # @browser.action.move_to(menu).click(submenu).perform

  #
  # element = @browser.find_element(:id, "div0")
  # #
  # # # #Check element's initial target attribute
  # # puts element.attribute('aria-hidden')
  # # #=> "_top"
  # #
  # # #Execute javascript to change the attribute
  # script = "return arguments[0].aria-hidden = 'false'"
  # @browser.execute_script(script, element)
  # # puts element.attribute('aria-hidden')
  # # # @browser.execute_script(@browser.find_element(:xpath, ".//*[@id='div0']")).setAttribute('aria-hidden', "false")
  # #
  # @browser.find_element(:id, "custFirstName").send_keys "stefan balda"
  # @browser.execute_script("document.getElementById('div0').setAttribute('aria-hidden', 'false')")
  # sleep 2

  # @browser.execute_script("arguments[0].setAttribute('aria-hidden', 'false')")
# @browser.execute_script(source)
  # @browser.execute_script("document.getElementById('custFirstName').setAttribute('aria-hidden', 'false')")

end