Then(/^Added "([^"]*)" is displayed in checkout page$/) do |product|
	page.has_selector?(:xpath, ".//*[@id='checkout_page_container']//a[text()='"+product+"']")
	
	#fill_in ".//*[@id='checkout_page_container']//form[@class='adjustform qty']/input[@type='text']", with: "1"
		
	#page.find(:xpath, ".//*[@id='checkout_page_container']//input[@value='Update']").click
	#validate the price
	page.find(:xpath,".//*[@id='checkout_page_container']//td[@class='wpsc_product_quantity wpsc_product_quantity_0']/following::td[1]/span").should have_text("$270.00")
end

When(/^I continue to checkout by filling the shipping details$/) do 
	click_link('Continue')
	page.should have_text("Calculate Shipping Price")
end

When(/^I click the "([^"]*)" button$/) do |btn|
	click_button(btn)
end



Then (/^The message is displayed "([^"]*)"$/) do |msg|
	page.should have_text msg
end 

  
 