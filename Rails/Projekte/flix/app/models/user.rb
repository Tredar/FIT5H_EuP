class User < ApplicationRecord
  has_secure_password
  has_many :favorits, dependent: :destroy
	has_many :favorited_movies, through: :favorits, source: :movie 
	
  validates :name, presence: true
  validates :email, presence: true, format: { with: /(\S+)@(\S+)/ }, uniqueness: { case_sensitive: false }
end
