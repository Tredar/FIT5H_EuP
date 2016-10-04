#a. legen Sie zur uebung auf der irb ein Array jahreszeiten mit den Elementen: Sommer, Herbst, Winter an; sowohl in der Langform, als auch der Kurzform
#b. lassen Sie ausgeben wieviele Elemente das Array enthaelt, welche Jahreszeit die zweite im Array ist
#c. fuegen Sie das Element fruehjahr hinzu
#d. entfernen Sie das Element wieder aus dem Array
#e. ermitteln Sie mit Hilfe von ri, wie join Ihnen bei einer folgendermassen formatierten Ausgabe behilflich sein kann: Sommer und Herbst und Winter
#f. notieren Sie den Befehl
#g. ermitteln Sie den Befehl mit dem Sie die Positionen der Elemente des Arrays nach einem Zufallsprinzip anordnen koennen
#h. packen Sie Ihre drei Player aus dem Projekt in ein Array
#i. Geben Sie Player mit einer Iteration über das Array aus. Beginnen Sie mit einer Zeile, in der sie die Anzahl der Mitspieler notieren


#a.
jahreszeiten = ["Sommer", "Herbst", "Winter"]
jahreszeiten_kurz = %w(Sommer Herbst Winter)

#c.
jahreszeiten << "Fruehjahr"
jahreszeiten_kurz << "Fruehjahr"

#d.
jahreszeiten.pop

#b.
puts jahreszeiten.size
puts jahreszeiten_kurz.size

#g.
puts jahreszeiten.shuffle

#h.
class Player
	def initialize(name, health=100)
		@name = name
		@health = health
	end

	def say_hello
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
puts player1.say_hello


player2 = Player.new("Tom")
player2.w00t(10)
puts player2.say_hello

#h.
Players = [player1, player2]
puts Players.size

Players.each do |spieler|
	puts spieler
end
