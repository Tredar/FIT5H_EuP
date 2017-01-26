class Like < ApplicationRecord
	belongs_to :book

	validates :like { maximum: 5 }
end
