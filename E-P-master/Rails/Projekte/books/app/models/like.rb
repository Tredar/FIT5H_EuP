class Like < ApplicationRecord
	belongs_to :book
	/HOW_HEARD_OPTIONS = [
  			1,
  			2,
  			3,
  			4,
  			5
  	]
		validates :quality, inclusion: { in: HOW_HEARD_OPTIONS }
	/
		validates :quality, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 } 
end
