def say_hello(name="Ludwig",health=100)
	puts "Hallo ... Ich bin #{name} mit einem Wert von #{health} um #{set_time}"
end

def set_time
	Time.now.strftime("%H:%M")
end
say_hello