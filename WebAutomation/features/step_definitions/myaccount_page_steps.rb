  
When(/^I update My Details$/) do 
	click_link('Your Details')
	fill_in "wpsc_checkout_form_2", with: "SATHIYA"
	fill_in "wpsc_checkout_form_3", with: "Venugopal"
	fill_in "wpsc_checkout_form_4", with: "7077 Alvern st"
	fill_in "wpsc_checkout_form_5", with: "Los Angeles"
	#fill_in "wpsc_checkout_form_6", with: "California"
	page.find(:xpath,".//*[@id='wpsc_checkout_form_7']/option[@value='US'][1]").select_option
	fill_in "wpsc_checkout_form_8", with: "90045"
	fill_in "wpsc_checkout_form_18", with: "480-787-7473"
	page.find(:id,"shippingSameBilling").set(true)
	click_button("Save Profile")
end  

Then (/^I see "([^"]*)" as First Name$/) do |field|
	page.find(:id,"wpsc_checkout_form_2").should have_text(field)
end