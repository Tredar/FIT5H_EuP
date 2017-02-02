class Bibliothek
	attr_reader :namebib
	attr_accessor :buecher
	def initialize(namebib)
		@namebib=namebib
		@buecher = []
	end
	def add_book(var)
		@buecher << var
	end
	def to_s
		puts "#{@buecher[2].autor.name}, #{@buecher[2].titel}, #{@buecher[2].gekauft_am}.\n" 
		puts "#{@buecher[3].autor.name}, #{@buecher[3].titel}, #{@buecher[3].gekauft_am}.\n"
		puts "#{@buecher[2].autor.name}, #{@buecher[2].titel}, #{@buecher[2].gekauft_am}.\n"
		puts "#{@buecher[0].autor.name}, #{@buecher[0].titel}, #{@buecher[0].gekauft_am}."
	end
	def buch_aktion(date)
		keine_aktion = []
		pruefen = []
		ueberarbeiten = []
		verliehen = []
		@buecher.each do |buch|
			if date-buch.gekauft_am <2 && buch.nicht_da != 1
				keine_aktion << buch 
			elsif date-buch.gekauft_am <5 && buch.nicht_da != 1
				pruefen << buch
			elsif buch.nicht_da == 1
				verliehen << buch 
			else
				ueberarbeiten << buch
			end
		end
		if keine_aktion.size == 0

		elsif keine_aktion.size == 1
			puts "1 Buch bei dem keine Aktion nötig ist:\n"
		else
			puts "#{keine_aktion.size} Bücher bei denen keine Aktion nötig ist:\n"
		end
		keine_aktion.each do |buch| 
			puts "#{buch.autor.name}, #{buch.titel}, #{buch.gekauft_am}.\n"			
		end
		if pruefen.size == 1
			puts "1 Buch bei dem eine Kontrolle nötig ist:\n"
		else 
			puts "#{pruefen.size} Bücher bei denen eine Kontrolle nötig ist:\n"
		end
		pruefen.each do |buch| 
			puts "#{buch.autor.name}, #{buch.titel}, #{buch.gekauft_am}.\n"			
		end
		if ueberarbeiten.size == 1
			puts "1 Buch das in die Restaurierung geht:\n"
		else
			puts "#{ueberarbeiten.size} Bücher die in die Restaurierung gehen:\n"
		end
		ueberarbeiten.each do |buch| 
			puts "#{buch.autor.name}, #{buch.titel}, #{buch.gekauft_am}.\n"			
		end
		verliehen.each do |buch| 
			puts "Buch '#{buch.titel}' ist verliehen.\n\n"			
		end
	end
	def buch_zueruck(buch)
		buch.nicht_da = 0
		puts "Buch '#{buch.titel}' ist wieder inventarisiert.\n\n"
	end
end
class Buch
	attr_accessor :autor, :gekauft_am, :titel, :nicht_da
	def initialize(autor, titel, gekauft_am, nicht_da=0)
		@autor = autor
		@gekauft_am = gekauft_am
		@titel = titel
		@nicht_da = nicht_da
	end
end
class Autor
	attr_reader :name, :geb
	def initialize(name, geb)
		@name = name
		@geb = geb
	end
end
class Ausleiher
	def initialize(ausleiher)
		@ausleiher = ausleiher
		@ausgeliehen = []
	end
	def ausleihen(date, buch)
		if  date-buch.gekauft_am<2
			@ausgeliehen << buch 
			buch.nicht_da = 1
			puts"Kunden auf pflegliches Behandeln hinweisen.\n"
			puts"Buch '#{buch.titel}' darf ausgehändigt werden.\n\n"
		elsif date-buch.gekauft_am>5
			puts"Buch wird restauriert und kann nicht ausgeiehen werden"
		else
			puts"Buch vor Abgabe prüfen"
		end
	end
	def to_s
		puts "Ausgeliehen:\n"
		@ausgeliehen.each do |buch| 
			puts "#{buch.autor.name}, #{buch.titel}, #{buch.gekauft_am} von  Ausleiher: #{@ausleiher}\n"	
		end
	end
end


bib = Bibliothek.new("Hamburg")
autor_1 = Autor.new("Maier", "20.3.1980")
buch_1 = Buch.new(autor_1, "Niemand", 2005)
buch_2 = Buch.new(autor_1, "Jeder", 2010)
buch_3 = Buch.new(autor_1, "Immer wieder gern", 2013)
buch_4 = Buch.new(autor_1, "Morgen ist auch noch ein Tag", 2011)

bib.add_book(buch_1)
bib.add_book(buch_2)
bib.add_book(buch_3)
bib.add_book(buch_4)

horst = Ausleiher.new("Horst")

#Hinweis: in Zeile 60, 65 und 94 sind doppelte Absätze eingebaut um die aktuelle Ausgabe übersichtlich darzustellen.
#Sollten die folgenden Befehle verändert werden sind die zusätzlichen \n vllt. störend und sollten entfernt werden.

horst.ausleihen(2014, buch_3)

bib.buch_aktion(2014)

bib.buch_zueruck(buch_3)

bib.buch_aktion(2014)