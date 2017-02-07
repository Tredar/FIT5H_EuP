class Movie < ApplicationRecord
	has_many :reviews, dependent: :destroy
	has_many :favorits, dependent: :destroy
	has_many :favoriters, through: :favorits, source: :user
end
