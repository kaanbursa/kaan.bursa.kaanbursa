require 'rest-client'
require 'json'

puts "Hello, What type of stories do you want(top or hot)"

story = gets.strip

puts "How many stories do you want"

num = gets.strip.to_i

puts "Showing #{story} stories"

response = RestClient.get "http://www.reddit.com/#{story}.json?limit#{num}"


parsed_response = JSON.parse(response)

stories = parsed_response["data"]["children"]

if stories.empty?
	break
end

stories.each_with_index do |story, index|

    puts "#{index+1}. #{story["Data"]["title"]}" 
end


