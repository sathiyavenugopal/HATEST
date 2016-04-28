Feature: Submit an order for an Apple iPhone4s 16GB SIM-Free – Black

 
Scenario: As an user i want to login to online store and order a phone
Given I visit the url "http://store.demoqa.com" in a browser
 Given I logged into online store website using the username "sathiyavenugopal" and password "sathiya!23"
 When I click the submenu "iPhones" under the menu "Product Category"
 And I see the product "Apple iPhone 4S 16GB SIM-Free – Black" is listed for sale
 And The phone has "16GB Internal Memory" and "8MP Camera with HD Video Recording" and "A5 Chipset and Dual Core 1GHz processor"
 And The phone original price is "275"
 And The phone new price is "270"
 And I add the "Apple iPhone 4S 16GB SIM-Free – Black" to cart
 And I am on the page "Checkout"
 And Added "Apple iPhone 4S 16GB SIM-Free - Black" is displayed in checkout page
 And I continue to checkout by filling the shipping details
 And I click the "Purchase" button
 Then The message is displayed "Thank you, your purchase is pending. You will be sent an email once the order clears."
 Then I logout the application

Scenario: As an user, if I remove all items from your cart produces an empty cart message.
Given I visit the url "http://store.demoqa.com" in a browser
 Given I logged into online store website using the username "sathiyavenugopal" and password "sathiya!23"
 When I click the submenu "iPhones" under the menu "Product Category"
 And I see the product "Apple iPhone 4S 16GB SIM-Free – Black" is listed for sale
 And I add the "Apple iPhone 4S 16GB SIM-Free – Black" to cart
 Then I am on the page "Checkout"
 When I click the "Remove" button
Then The message is displayed "Oops, there is nothing in your cart."
Then I logout the application

Scenario: As an user,updating my account details is saved and retrieved after logging out and back in using the My Account link.
Given I visit the url "http://store.demoqa.com" in a browser
 Given I logged into online store website using the username "sathiyavenugopal" and password "sathiya!23"
  When I update My Details
  Then I logout the application
  And I visit the url "http://store.demoqa.com" in a browser
  And I logged into online store website using the username "sathiyavenugopal" and password "sathiya!23"
  Then I see "SATHIYA" as First Name
  Then I logout the application