class MoviesController < ApplicationController
end
def index
	@movies = Movie.all
end