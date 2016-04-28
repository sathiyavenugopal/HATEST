

When (/^I see the product "([^"]*)" is listed for sale$/) do |product|
	page.assert_selector(:xpath, ".//*[@id='default_products_page_container']//a[contains(.,'"+product+"')][1]")
end


When (/^The phone has "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |spec1,spec2,spec3|
	page.should have_text(spec1)
	page.should have_text(spec2)
	page.should have_text(spec3)
end

When (/^The phone original price is "([^"]*)"$/) do |old_price|
	page.find(:xpath,".//*[@id='default_products_page_container']//span[@class='oldprice old_product_price_96']").should have_text(old_price)
end

When (/^The phone new price is "([^"]*)"$/) do |new_price|
	page.find(:xpath,".//*[@id='default_products_page_container']//span[@class='currentprice pricedisplay product_price_96']").should have_text(new_price)
end


When (/^I add the "([^"]*)" to cart$/) do |product|
	page.find(:xpath,"(.//*[@id='default_products_page_container']//a[text()='"+product+"']/following::div/span/input[@type='submit'])[1]").click
	#page.should have_text("You just added ""Apple iPhone 4S 16GB SIM-Free - Black"" to your cart.")
	#page.find(:xpath,".//*[@id='fancy_notification_content']/span")
	click_link('Go to Checkout')
end
 
 