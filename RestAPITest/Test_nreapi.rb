require 'minitest/autorun'
require 'rest-client'
require 'json'

class BREAPITest < MiniTest::Unit::TestCase
  
  
  
  def test_alt_fuelstations
    response = RestClient.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=BLTrIFgzstOMHwYFteJQZaphVfiZjzDNuYXGY59M&location=Austin+TX&ev_network=ChargePoint%20Network")
	
	assert_equal response.code,200 # sucess
	res_data =JSON.parse(response.body)
	res_data['fuel_stations'].each do |stat|
		if stat['station_name'] =="HYATT AUSTIN"
			File.open("HYATT_AUSTIN_station.txt", 'w') { |file| file.write(stat) }
			puts stat['id']
			assert_equal stat['street_address'],"208 Barton Springs"
			assert_equal stat['city'],"Austin"
			assert_equal stat['state'],"Texas"
			assert_equal stat['zip'],"78704"
			#Country can't be validated as its not in the response. https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest/
			end
		#puts stat['station_name']
		end
		puts "Test complete!"
end 

end
