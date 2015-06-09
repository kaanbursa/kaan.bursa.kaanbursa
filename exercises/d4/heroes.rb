hero = {
	name: "Liza",
	health: 10,
	power: 5,
	items: ["Blade","water bottle","blanket","necklace"],
	exp: 0
}

monster = [{ 
	name: "Shark",
	health: 200,
	power: 500,
	type:  "fish"
	},
	{
	name: "Dragon",
	health: 200,
	power: 500,
	type:  "flying",
	},
	{
	name: "Goblin",
	health: 200,
	power: 500,
	type:  "mage"
	}

]

def attack (attacker,defender)
	defender[:health] -= attacker[:power]
	unless exp.nil?
		attacker[:exp] += 1
	end

end

health = hero[:exp]
puts "before: #{health}"
attack(hero, monster[0])
health = hero[:exp]
puts "after: #{health}"