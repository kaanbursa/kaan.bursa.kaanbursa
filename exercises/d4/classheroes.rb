class LivingThing
	def initialize(name, health, power)
		@name = name
		@health = health
		@power = power		
	end

	def dead?
		if @health <= 0
			puts "I'm dead. "
			@health <= 0
		end

	end
end


class Hero < LivingThing
	def initialize(name, health, power, items)
		@name = name
		@health = health
		@power = power
		@items = items
		@exp = 0
	end

	def attack(defendant)
		defendant[:health] -= @power
	end

end

aaron = Hero.new("Aaron", 10, 2000, ["scruff", "squash racket"])

class Monster < LivingThing
	def initialize(name, health, power, type)
		@name = name
		@health = health
		@power = power
		@type = type
		@exp = 0
	end

	def attack(defendant)
		defendant[:health] -= @power
	end


end

shark = Monster.new("Jaws", 20, 40, "fishy")