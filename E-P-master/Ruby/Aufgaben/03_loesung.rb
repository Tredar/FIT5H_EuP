name1 = "Larry"
name2 = "curly"
name3 = "Moe"
name4 = "Shemp"
health = 5
allename = <<array1zu1
Players:
	#{name1}
	#{name2}
	#{name3}
array1zu1
var1 = "#{name3} has a health of #{health*20}"
var2 = "#{name4} has a health of #{health*18}"
var3 = "#{health*18} health"
puts" 
#{name1} has a health of #{health*12}
#{name2.upcase} has a health of #{health*25}
#{var1.center(50, "*")}
#{var1.center(50, "*")}
#{name4}#{var3.rjust(30, ".")}
#{name4}#{var3.rjust(30, ".")}
#{allename}
This game started on #{Time.now.strftime("%A %D at %H:%M %p")}
"
