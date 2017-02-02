
def time
	Time.now.strftime("%H:%M")
end

def say_hello(name, health = 100) 
	if not name 
	   name = 'Ludwig'
	end
	"Ich bin #{name} mit einem Wert von #{health} um #{time}"
end
puts say_hello(ARGV[0])