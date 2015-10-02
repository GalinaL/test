class OrdersPage < PageActions

  def orders_dropdown
    el = @browser.find_element(:xpath, ".//*[@id='qm0']/a[2]")
    @browser.mouse.move_to el
  end

  def upload_orders
    orders_dropdown
    @browser.find_element(:xpath, ".//*[@id='qm0']/div[1]/a[1]").click
    @browser.find_element(:xpath, ".//*[@id='Seller']/option[2]").click
    element = @browser.find_element(:id, "orderFile")
   # element.send_keys   "/Users/sso/SauceLabs/sauce/hostess/maitred/maitred/public/images/darkbulb.jpg"
  # I need to add a real file for upload, order_upload_test.rtf was added as an example
    element.send_keys "/Users/galinaluzyanina/Desktop/order_upload_test.rtf"
    sleep 10
    # @browser.find_element(:css, "input.btn").click
  end

  end