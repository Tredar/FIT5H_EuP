class Movie
	def initialize
		puts "Super. neues Movie"
	end
	
	def list_movie
		"List Movie Methode aufgerufen"
	end
end

var = Movie.new
puts var.list_movie