#a. erstellen Sie eine Klasse Game mit einem Konstruktor, der eine Instanzvariable title anlegt und
#  fuellt und ein leeres Array mit dem Name Player enthaelt.
#b. die Klasse Game hat eine Methode add_player der ein SPieler hinzugefuegt wird
#c. eine Methode play erzeugt folgenden Ausdruck:
#	There are 3 players in Knuckleheads: 
#	I'm Moe with a health of 100 and a score of 103.
#	I'm Larry with a health of 60 and a score of 65.
#	I'm Curly with a health of 125 and a score of 130.
#	Moe got blammed!
#	Moe got w00ted!
#	Moe got w00ted!
#	I'm Moe with a health of 120 and a score of 123.
#	Larry got blammed!
#	Larry got w00ted!
#	Larry got w00ted!
#	I'm Larry with a health of 80 and a score of 85.
#	Curly got blammed!
#	Curly got w00ted!
#	Curly got w00ted!
#I'm Curly with a health of 145 and a score of 150.
class Game
		def initialize(title)
			@title = title
			@Player = []
		end
		def add_player(player)
			@Player << player
		
		end
		def play
			puts "There are #{@Player.size} Players in #{@title}\n"

				@Player.each do |player|
					puts player.say_hello
				end
				@Player.each do |player|
					puts player.blam
					puts player.woot
					puts player.woot
					puts player.say_hello
				end
		end
end
class Player
	def initialize(name, health=100) 
		@name = name
		@health = health
	end
	def say_hello
		"I'm #{@name} with a health of #{@health} and a score of #{score}"
	end
	def blam
			@health -= 10
				if @health <= 0
					@health = 0
					"#{@name} got blamed"
				else
					"#{@name} got blamed"
		end
	end
	def woot
		@health += 10
			"#{@name} got wooted"
	end
	def score
		@health + @name.length
	end
end

player1 = Player.new("Hans",24)
player2 = Player.new("Max",12)
player3 = Player.new("Moritz",42)

players = [player1, player2, player3]

Game1 = Game.new("Knuckleheads")
players.each do |player|
	Game1.add_player(player)
end
#players.each {|player| Game1.add_player(player)}
Game1.play