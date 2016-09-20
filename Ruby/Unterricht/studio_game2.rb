name1 = "Larry"
name2 = "Curly"
name3 = "Moe"
health1 = 60
health2 = 125
health3 = 100

puts "#{name1} has a health of #{health1}\n#{name2} has a health of #{health2}\n"
2.times do
	puts "#{name3.rjust(20, '*')} has a health of #{health3.to_s.ljust(20, '*')}."
end

2.times do
	puts "Shemp #{(health3-10).to_s.rjust(20,'.')} health"
end 

puts "Players:\n\t#{name1}\n\t#{name2}\n\t#{name3}"
puts Time.now.strftime("%A %D  /%m /%G at %R%P")
