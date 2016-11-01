#1. Erstellen Sie eine Klasse Car mit den Eigenschaften: ps, typ, verbrauch
	#Stellen Sie sicher, dass die Eigenschaft typ beim ersten Buchstaben einen Großbuchstaben erstellt.
	#Stellen Sie sicher, dass bei der Eingabe einer Zahl keine Ausnahme geworfen wird.
	#Stellen Sie sicher, dass bei der Eingabe überprüft wird, ob es sich um einen String handelt, der mindestens 3 Ziffern lang ist
	#Stellen Sie sicher, dass die Instanzvariable ps nur dann gefüllt wird, wenn es sich um einen positiven Wert größer als Null handelt.
#2. Das Fahrzeug kann beschleunigen. Die Methode beschleunigen bekommt einen Parameter zeit, der die Sekundenzahl des Beschleunigungsvorgangs enthält. Ausgegeben wird die erreichte Geschwindigkeit in km/Stunde. Die Geschwindigkeit wir errechnet aus PS mal Sekunden geteilt durch 100 und ergibt die Einheit Meter/Sekunden.
#3. Erstellen Sie einen Konstruktor, der für die Eigenschaft ps einen Wert erwartet, für die Eigenschaft typ optional eine Initialsisierung ermöglicht.
#4. Legen Sie 3 Objekte von dieser Klasse an: Objekt1: ps:200 typ:'klaumich' , Objekt2: ps:80 typ: 'Hauni, Objekt3: ps: 100
#5. Speichern Sie die Objekte in einem Array und lassen Sie das Array durchlaufen und geben Sie einen Typ aus.
#4. Lassen Sie das Array durchlaufen, geben Sie den Typ aus.
#5. Erstellen Sie eine Ausgabe: sortiert nach PS
#6. Legen Sie 3 weitere Objekte von der Klasse Car an. Die Daten stehen in einem Hash, wobei die erste Position den Typ und die zweite Position die PS enthält: vals = { 'BMW' => 200, 'Trabbi' => 150, 'Honda' => 20}. Lassen Sie den Hash durchlaufen, erzeugen jeweils ein Car Objekt und legen dieses im Array cars2 ab.
#7. Erstellen Sie eine Klasse 'Driver mit der Eigenschaft 'name', die im Konstruktor gesetzt werden muss. Es gibt ein Array cars, dass im Kontruktor initializiert wird. Es gibt eine Methode add_cars mit der für das Driver-Objekt ein Fahrzeug hinzugefügt werden kann. Es gibt eine Ausgabe show_cars die die Fahrzeuge mit der Typenbezeichnung auflistet. Legen Sie ein Objekt Theo an, ordnen Sie von den Car-Arrays jeweils das erste dem Driver-Objekt zu. Lassen Sie die Daten der zugeordneten Fahrzeuge ausgeben.

#1
class Car
	attr_accessor :verbrauch
	attr_reader :typ, :ps

	def initialize(ps, typ="")
		@ps = ps
		@typ = typ
	end

	def ps=(ps)
		@ps = ps if ps > 0
	end

	


	def typ=(typ)
		if ! typ.is_a?(String)
			puts "war kein String"
		elsif typ.size < 3
			puts "String zu kurz"
		else
			@typ = typ.to_s.capitalize
		end
	end	

	def beschleunigen(zeit)
		geschwindigkeit = @ps * zeit / 100
		puts "Die Geschwindigkeit beträgt nun #{convert_to_kmh(geschwindigkeit)} km pro Stunde"
	end

	private
		def convert_to_kmh(var)
			var * 3.6
		end

#	def typ=(typ)
#		if typ.is_a?(String) && typ.size >= 3
#			@typ = typ.to_s.capitalize
#		else
#			puts "war kein String"
#		end	
#	end
end

class Lkw < Car

end

#Für Aufgabe 2 mit Vererbungen
#obj = Lkw.new
#obj.typ = "abcd"
#obj.ps = 50
#obj.beschleunigen(10)

#Aufgabe 3
car1 = Car.new(200,'Klaumich')
car2 = Car.new(80,'Hauni')
car3 = Car.new(100)

cars = [car1, car2, car3]

cars.each do |car|
	if car.typ.empty?
		puts "Kein Wert"
	else
		puts car.typ
	end
end

vals = { 'BMW' => 200, 'Trabbi' => 150, 'Honda' => 20}
cars2 =[]
vals.each do |typ, ps|
	cars2 << Car.new(ps, typ)
end
puts cars2.inspect

#7
class Driver
	attr_accessor :name
	def initialize(name)
		@name = name
		@cars = []
	end
	def add_cars(car)
		@cars << car
	end
	def show_cars
		@cars.each do |car|
			puts car.typ
		end
	end
end

theo = Driver.new('Theo')
theo.add_cars(cars[0])
theo.add_cars(cars2[0])
theo.show_cars