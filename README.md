

#REST API Test
1. install required gems if not already. gem install rest-client , gem install json, gem install minitest.
2. Run in cmd Ruby Testnreapi.rb.
3. Output file will be written in the folder where its extracted.

Bug:
The street address doesn't match between requirements and api response. Test assertion will fail, and display the result in cmd.


#Web automation tests:
The web automation tests are created in cucumber, ruby, capybara in page object pattern. Created all high level framework with required runner. Extract the folder webautomation to local system and CD to the folder. Run below command in CMD.
cucumber features/hatest.feature.

The Test cases are in the features folder.The test results will be printed in the cmd. Failure screenshots will be in the features folder.
