name1 = "larry"
health = 60
name2 = "curly"
name3 = "moe"
puts "#{name1}'s health is #{health}
#{name1}'s health is #{health * 3}
#{name1}'s health is #{(health / 9.0).round(2)}
#{name1}'s health is #{health / 9}
Players:
\t#{name1}
\t#{name2}
\t#{name3}
"
allenamen = <<array1zu1
Players:
#{name2}
	#{name1}
	
	#{name3}
array1zu1
puts allenamen