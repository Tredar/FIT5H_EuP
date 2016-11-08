# FIT5H
# Knoop, Fabian
# Datum: 08.11.2016
# EuP

class Bibliothek
	attr_reader :name
	attr_accessor :buecher

	def initialize(name)
		@name = name
		@buecher = []
	end
	def name=(name)
		@name = name
	end
	def add_book(buch)
		@buecher << buch
	end
	def buecher(buecher)
		@buecher = buecher
	end
	def ausgabe
		@buecher.each do |buch|
			puts buch.autor[0].name + ", " + buch.titel + ", " + buch.gekauft_am.to_s + "."
		end
	end
	def buch_aktion=(jahr)
		@buecher.each do |buch|
			if buch.gekauft_am + 2 > jahr
				puts "Buch bei dem keine Aktion nötig ist: " + "\n" + buch.autor[0].name + ", " + buch.titel + ", " + buch.gekauft_am.to_s + "."
			elsif buch.gekauft_am + 2 < jahr && buch.gekauft_am + 5 > jahr
				puts "Buch bei denen eine Kontrolle nötig ist: " + "\n" + buch.autor[0].name + ", " + buch.titel + ", " + buch.gekauft_am.to_s + "."
			elsif buch.gekauft_am + 5 < jahr
				puts "Buch das in die Restaurierung geht: " + "\n" + buch.autor[0].name + ", " + buch.titel + ", " + buch.gekauft_am.to_s + "."
			else
				puts "Fehler bei Jahreszahl"
			end
		end
	end
end


class Buch
attr_accessor :autor, :gekauft_am, :titel

	def initialize(titel, gekauft_am)
		@titel = titel
		@gekauft_am = gekauft_am
		@autor = []
		
	end
	def autor=(autor)
		@autor << autor
	end
	def titel=(titel)
		@titel = titel
	end
	def gekauft_am=(gekauft_am)
		@gekauft_am = gekauft_am
	end
end



class Autor
	attr_reader :name, :geburtstag

	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag
	end
	def name=(name)
		@name = name
	end
	def geburtstag=(geburtstag)	
		@geburtstag = geburtstag
	end
end

bibliothek = Bibliothek.new("Hamburg")
autor_1 = Autor.new("Maier", "20.3.1980")
buch_1 = Buch.new("Niemand", 2005)
buch_2 = Buch.new("Jeder", 2010)
buch_3 = Buch.new("Immer wieder gerne", 2013)
buch_4 = Buch.new("Morgen ist auch noch ein Tag", 2013)
buch_1.autor = autor_1
buch_2.autor = autor_1
buch_3.autor = autor_1
buch_4.autor = autor_1
bibliothek.add_book(buch_1)
bibliothek.add_book(buch_2)
bibliothek.add_book(buch_3)
bibliothek.add_book(buch_4)

bibliothek.ausgabe
bibliothek.buch_aktion = 2014

puts "\n" + "\n" + "Aufgabe 8:" + "\n"
# Aufgabe 8

class Leihbuecher
	attr_accessor :titel, :autor, :status

	def initialize (titel, autor, status="vorhanden")
		@titel = titel
		@autor = autor
		@status = status
	end
	def titel=(titel)
		@titel = titel
	end
	def autor=(autor)
		@autor = autor
	end
	def status=(status)
		@status = status
	end
end

class Kunde
	attr_accessor :kunde, :buch_ausleihen
	attr_reader :ausgeliehene_buecher
	def initialize (name, adresse, telefonnummer, geburtsdatum="")
		@name = name
		@adresse = adresse
		@telefonnummer = telefonnummer
		@geburtsdatum = geburtsdatum
		@ausgeliehene_buecher = []
	end
	def kunde=(name, adresse, telefonnummer, geburtsdatum="")
		@name = name
		@adresse = adresse
		@telefonnummer = telefonnummer
		@geburtsdatum = geburtsdatum
		@ausgeliehene_buecher = []
	end
	def buch_ausleihen(titel, autor, datum)
		@titel = titel
		@autor = autor
		@ausgeliehen_am = datum
	end
	def ausgeliehene_buecher
		@ausgeliehene_buecher << "Autor: " + @autor + "\n" + "Titel: " + @titel + "\n" + "ausgeliehen am : " + @ausgeliehen_am
	end
	# Die Methode buch_zurückgeben sollte eigentlich den Wert für das Buch bekommen welches zurückgegeben wird, und dann aus dem Array ausgeliehene Bücher den Wert löschen. (Code fehlt)
	def buch_zurueckgeben
		@titel = titel
		@autor = autor
	end
end

buch10 = Leihbuecher.new("Jeder", "Maier")
buch11 = Leihbuecher.new("Wo die Fliege hinfliegt?!", "Fabian")
kunde1 = Kunde.new("Fabian K.", "Hans Straße 107 21465 Reinbek", "0123456789", "04.07.1990")
kunde1.buch_ausleihen("Jeder", "Maier", "20.11.2016" )

puts kunde1.ausgeliehene_buecher

