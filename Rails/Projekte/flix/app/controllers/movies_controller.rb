class MoviesController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]
	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def new
		@movie = Movie.new
	end
	def create
		@movie = Movie.create(movie_params)
		redirect_to movies_path
	end

	def edit
		
	end

	def update
		@movie.update(movie_params)
		redirect_to movies_path
	end

	def destroy
		@movie.destroy
		redirect_to movies_path
	end

	private
		def set_event
			@movie = Movie.find(params[:id])
		end
		def movie_params
			permitted_params = params.require(:movie).permit(:title, :description, :rating, :total_gross, :released_on)
		end

end