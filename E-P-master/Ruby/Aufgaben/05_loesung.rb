class Player
	def initialize(name, health = 100)
		@name = name
		@health = health
	end
	def to_s
		"Ich bin #{@name} mit einem Wert von #{@health}"
	end
	#def name <- ist das gleiche wie oben das attr_... GETTER
	#	@name
	#end
	attr_reader :name
	#def name = (name) <- neu beschrieben der Variable... SETTER
	#	@name = name
	#end	
	attr_writer :name
	# attr_accessor :name <- Kurzform für beides
	def blame(value = 10) 
		i = 1
		healthp = @health
		while i < 11 do 
			healthp = healthp + value
			puts "#{@name} besitzt #{healthp} Healthpoints"
			i = i +1
			sleep 1
		end
	end
	def w00t(value = 10) 
		i = 1
		healthp = @health
		while i < 11 do 
			healthp = healthp - value
			puts "#{@name} besitzt #{healthp} Healthpoints"
			i = i +1
			sleep 2
		end
	end
end
player1 = Player.new("Tom")
player2 = Player.new("Horst")
player3 = Player.new("Hans")

#puts player1.name

Players = [player1, player2, player3]

puts "Es sind #{Players.size} Spieler angemeldet:"

i = 1
Players.each do |spieler|
	puts "Spieler #{i} heißt #{spieler.name}"
	i += 1
end
