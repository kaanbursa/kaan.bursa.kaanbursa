class Person
	def initialize(name)
		@name = name
	end
end

class Engineer<Person
	def initialize(name,field)
		@name = name
		@field = field
	end

	def go_to_work
		puts "Going to work as an engineer in #{field}"
	end
end

elon_musk = Engineer.new('elon_musk','space tavel')
puts elon_musk

class People
	def initialize(id,name)
		@id = id
		@name = name
	end

	def ids
		puts "#{id} and the #{name}"
	end
end

kaan = People.new('Kaan','123123')

puts kaan