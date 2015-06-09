require 'rest-client'
require 'JSON'

#greet
puts "Hi, Welcome to the weather app"
#ask for location
puts  "Pick A Location"
#input
location = gets.strip

response = RestClient.get "api.openweathermap.org/data/2.5/weather?q=#{location}"

parsed_response = JSON.parse(response)

puts parsed_response



#get the weather information from the API

#ask the user for the number of days they would like to see the weather for and show



