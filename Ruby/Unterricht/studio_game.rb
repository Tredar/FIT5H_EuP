name1 = 'larry'
name2 = 'curly'
name3 = 'moe'
health = 60

puts "Players: \n\t#{name1}'s health is #{(health / 9.0).round(2)}\n\t#{name2}'s health is #{health} \n\t#{name3}'s health is #{health * 2}"

allenamen = <<HEREDOC
Players:
	#{name1}
		#{name2}
	#{name3}
HEREDOC

puts allenamen