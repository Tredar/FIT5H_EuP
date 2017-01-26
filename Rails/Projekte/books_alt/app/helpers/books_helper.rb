module BooksHelper
	def average(book)
		if book.likes.count > 0 
			i=0
			book.likes.each do |q|
				i=i+q.quality
			end
			e=i/book.likes.count
		else
			0
		end
	end
end
