class ProductPage < PageActions

  def products_dropdown
    @browser.find_element(:xpath, ".//*[@id='qm0']/a[3]")
  end

  def select_products product_option
    products_dropdown.click
    state_list = @browser.find_element(:xpath, ".//*[@id='qm0']/div[2]").find_elements(:tag_name, "a")
    state_list.each do |element|
      if element.text == product_option
        element.click
        break
      end
    end
  end


  def verify_page_title
    @browser.find_element(:xpath, "html/body/div[1]/div/form/table/tbody/tr[1]/td")
  end

  def search_for_products
    @browser.find_element(:xpath, "html/body/div[1]/div/form/table/tbody/tr[8]/td[2]/select/option[13]").click
    @browser.find_element(:xpath,"html/body/div[1]/div/form/table/tbody/tr[24]/td/input[2]").click
  end





  end