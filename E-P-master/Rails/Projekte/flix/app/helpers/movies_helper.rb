module MoviesHelper
	def format_price(movie)
		if movie < 5000
			content_tag(:strong, 'Flop!')
		else
			number_to_currency movie, unit: "€", separator: ",", delimiter: ".", format: "%n %u"
		end
	end
end
