#-----------------Steps Definitions----------------------
# encoding=utf-8
#Author: Sathiya Venugopal
##These were global functions used across all pages



#Description: launch a browser and navigate to URL
#Arguments: 1. URL of the webpage with http/s
Given(/^I visit the url "([^"]*)" in a browser$/) do |url|
	visit url
end

Then (/^I logout the application$/) do 
	click_link("(Logout)")
end

#Description: Click the Menu and its submenu. EX: CLick the Products -->Iphones submenu
When (/^I click the submenu "([^"]*)" under the menu "([^"]*)"$/) do |submenu,menu|
	#page.find(:css, "#es_menu_2_span > span").trigger(:mouseover)
	WAIT = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
	#hover = WAIT.until{page.find(:xpath,".//a[contains(.,'Product Category')]")}
	hover = WAIT.until{page.find(:xpath,".//a[contains(.,'"+menu+"')]")}
	page.driver.browser.action.move_to(page.find(:xpath,".//a[contains(.,'"+menu+"')]").native).perform
    #$driver.action.move_to(hover).perform
	click_link(submenu)
end

Then(/^I am on the page "(.+?)"$/) do |pageTitle|
	page.has_title? pageTitle
end

Then(/^This text appears on page "([^"]*)"$/) do |arg1|
	page.should have_content(arg1)
end