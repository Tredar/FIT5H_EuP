class Event < ApplicationRecord
	has_many :registrations, :dependent => :destroy
	validates :name, presence:true
	validates :description, length: { minimum: 25 }
	validates :location, presence:true
	validates :price, numericality: { greater_then_or_equal_to: 0 }

	def free?
		price.blank? || price.zero?
	end
end
