#Erstellen Sie eine Klasse Calculator mit einem Konstruktor, der zwei Zahlen entgegennimmt und in Instanzvariablen speichert. 
#Eine Methode add, und eine Methode subtract führt eine Addition und eine Substraktion durch und gibt das Ergebnis zurueck.
#Legen Sie ein Objekt an und wenden Sie die Methoden add und subtract an.

class Calculator
	def initialize(zahl1, zahl2)
		@zahl1 = zahl1
		@zahl2 = zahl2
	end
	def add
		ergebnis = @zahl1 + @zahl2
	end
	def subtract
		ergebnis = @zahl1 - @zahl2
	end
end

obj = Calculator.new(20,10)
puts obj.add
puts obj.subtract