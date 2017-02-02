module BooksHelper
	def mittel(book)
		if book.likes.count > 0 
			i=0
			book.likes.each do |f|
				i=i+f.quality
			end
			e=i/book.likes.count
		else
			0			
		end
	end
end
