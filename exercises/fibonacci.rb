puts "welcome to list builder"
puts "what can I add"
list = []
while true
	thing = gets.strip.to_s
	list << thing
	puts "added! Your list is"
	puts "#{list}"
	puts "what can I add"
end
