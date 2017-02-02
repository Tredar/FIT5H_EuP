class Customer

	def initialize (bacc,lname ="")
		@bank_account = bacc
		@lastname = lname
	end

	def set_first(fname = " ")
		@firstname = fname
	end
	def set_last(lname = "")
		@lastname = lname
	end

	def set_street(str = " ")
		@street = str
	end

	def set_city(city = " ")
		@city = city
	end

	def print_address
		"Kunde:
	Konto:#{@bank_account.rjust(20, '.')}
	Name:#{@lastname.rjust(20, '.')}
	Vorname:#{@firstname.rjust(20, '.')}
	Strasse:#{@street.rjust(20, '.')}
	Ort:#{@city.rjust(20, '.')}"
	end

end

customer1 = Customer.new("18")
customer2 = Customer.new("5678","Horst")

customer2.set_first("Marvin")

customer2.set_street("Gasse 1")

customer2.set_city("23456 Dorf")

puts customer2.print_address
