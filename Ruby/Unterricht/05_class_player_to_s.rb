class Player
	def initialize(name, health=100)
		@name = name
		@health = health
	end

	def to_s
		"Hallo ... Ich bin #{@name} mit einem Wert von #{@health}"
	end

	def blam(value)
		@health = @health + value
	end

	def w00t(value)
		@health = @health - value
	end
end

player1 = Player.new("Frank", 10)
player1.blam(10)
puts player1


player2 = Player.new("Tom")
player2.w00t(10)
puts player2
