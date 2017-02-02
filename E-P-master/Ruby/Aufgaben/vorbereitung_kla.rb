#aus vorbereitung_kla.txt aufgaben 1-7
#Aufgabe 7

class Driver 
	attr_accessor :name
	def initialize(name)
		@name = name
		@cars3 = []
	end
	def add_cars(var)
		@cars3 << var
	end
	def show_cars
		@cars3.each do |car|
			puts car.typ 
		end
	end
end



#Aufgabe 1
class Car

	
	attr_accessor :ps, :typ, :verbrauch

	#Aufgabe 3
		def initialize(ps, typ="") 
			@ps = ps 
			@typ = typ 
		end

	#erweiterte Aufgabe 1 Lösung
	#	attr_accessor :ps :verbrauch
	#   attr_reader :typ
	#   def typ=(typ)
	#		@typ = typ.to_s.capitalize
	#   end
	
	#2te erweiterte Aufgabe 1 Lösung
	#	attr_accessor :ps :verbrauch
	#   attr_reader :typ
	#   def typ=(typ)
	#		if typ.is_a?(String) && typ.size >= 3
	#			@typ = typ.capitalize 
	#		else
	#			puts "war kein string"
	#		end
	#   end

	#3te erweiterte Aufgabe 1 Lösung
	#	attr_accessor  :verbrauch
	#   attr_reader :typ, :ps
	#	def ps=(ps)
	#		@ps = ps if ps > 0 
	#	end
	#   def typ=(typ)
	#		if typ.is_a?(String) && typ.size >= 3
	#			@typ = typ.capitalize 
	#		else
	#			puts "war kein string"
	#		end
	#   end
	#Ende aufgabe 1
	#Aufgabe 2
	def beschleunigen(zeit)
		speed = @ps*zeit/100

		puts "Das Fahrzeug hat #{convert_to_kmh(speed)} km/h erreicht"
	end

	private
		def convert_to_kmh(var)
			var * 3.6
		end
	#Ende aufgabe 2
end

#für vererbung.txt als übung 
#class Lkw < Car

#end
#obj2 = Lkw.new
#obj2.typ = 1
#obj2.ps = 50
#obj2.beschleunigen(2)

#Ende für vererbung.txt als übung 

#Ausgaben für aufgabe 2
#obj = Car.new
#obj.typ = 1
#obj.ps = 50
#obj.beschleunigen(2)

#Für Aufgabe 4
car3 = Car.new(200, "Klaumich")
car4 = Car.new(80, "Hauni")
car5 = Car.new(100, "Audi")

#Für Aufgabe 5
cars = [car3, car4, car5]

#cars.each do |car|
#	puts car.typ.empty? ? "Kein Wert" : car.typ
#
#	if car.typ.empty?
#		puts "Kein Wert"
#	else
#		puts car.typ
#	end
#end

#Aufgabe 6
vals = { 'BMW'	=> 200, 'trabbi' => 150, 'Honda'=> 20}
cars2 = []
vals.each do |typ, ps|
	cars2 << Car.new(ps, typ)
	 
end
#puts cars2.inspect


#Aufgabe 7 ausgabe


theo = Driver.new("theo")
theo.add_cars(cars[0]) 
theo.add_cars(cars2[0])
theo.show_cars