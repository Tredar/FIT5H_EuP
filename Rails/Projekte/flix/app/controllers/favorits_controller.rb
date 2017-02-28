class FavoritsController < ApplicationController
	def create
		@movie = Movie.find(params[:movie_id])
		unless Favorit.where(user_id: current_user.id, movie_id: @movie.id).any?
			@movie.favorits.create(user_id: current_user.id)
			redirect_to @movie, notice: "Der Film wurde Favorisiert"
		else
			redirect_to @movie, alert: "Mehrfach Favorisieren nicht möglich"
		end
	end

	def destroy
		@favorit = Favorit.find(params[:id])
		@favorit.delete
		redirect_to movie_path(params[:movie_id]), alert: "Du hast die Favorisierung entfernt"
	end
end
