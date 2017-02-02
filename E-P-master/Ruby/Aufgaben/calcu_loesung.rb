class Calculator
	attr_accessor :zahl1, :zahl2
	def initialize(zahlA, zahlB)
		@zahl1 = zahlA
		@zahl2 = zahlB
	end
	def substract
		@ergS = @zahl1 - @zahl2
		puts "Das Ergebnis ist #{@ergS}"
	end
	def add
		@ergA = @zahl1 + @zahl2
		puts "Das Ergebnis ist #{@ergA}"
	end
	def multipl
		@ergM = @zahl1 * @zahl2
		puts "Das Ergebnis ist #{@ergM}"
	end
	def divid
		if @zahl1 == 0 || @zahl2 == 0 
			puts "Error"
		else 
			@ergD = @zahl1 / @zahl2
			puts "Das Ergebnis ist #{@ergD}"
		end
	end
end
obj = Calculator.new(5, 2)
obj.zahl1 = 8
obj.divid