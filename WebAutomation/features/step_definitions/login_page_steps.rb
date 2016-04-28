
#-----------------Steps Definitions----------------------


# encoding=utf-8


#Author: Sathiya Venugopal

#Author: Sathiya Venugopal
#Description: launch a browser and navigate to URL
#Arguments: 1. URL of the webpage with http/s
Given (/^I logged into online store website using the username "([^"]*)" and password "([^"]*)"$/) do |username,password|
	click_link('My Account')
	fill_in 'log', :with=>username
	fill_in 'pwd', :with=>password
	click_button('login')
	page.find(:xpath,".//*[@id='wp-admin-bar-my-account']/a").should have_content(username)
end