puts "welcome"
list =[]
while true
	puts "what do you want to add"
	input = gets.strip.split
	if input[0].upcase == "ADD"
		if list.include?(input[1])
			puts "sorry That is already on the list"
		else
			list << input[1]
			puts "added is #{list}"
		end
	elsif input[0].upcase == "REMOVE"
		if list.include?(input[1])
			list.delete(input[1])
			puts "The item is deleted"
		else
			puts "sorry that does not exist"
		end
	elsif input[0].upcase == "QUIT"
		puts "bye"
		break
	else 
		puts "that was a mistake"
	end
end

			