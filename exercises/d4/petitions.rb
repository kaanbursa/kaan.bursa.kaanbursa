require 'rest-client'
require 'json'

# greet the user 
puts "Hello, Welcome to petitions"

puts

puts "would you like to get Open petitions or Closed petitions"

answer = gets.strip
offset = 0

puts "showing #{answer} petitions"



while true
	response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json?status=#{answer}&offset=#{offset}" 
	parsed_response = JSON.parse(response)
	petitions = parsed_response["results"]

	#get the petitions
if petitions.empty?
	puts "no more"
	break
end

	#print each petition
	petitions.each_with_index do |petition, index|
		

		puts "#{offset + index+1}. [#{petition["title"]}] [#{petition["answer".upcase]}"
	end
offset += 10

puts " would like to see more ? (y/n)"
break if gets.strip == "n"
end
#goodbye
puts "Thanks Bye"