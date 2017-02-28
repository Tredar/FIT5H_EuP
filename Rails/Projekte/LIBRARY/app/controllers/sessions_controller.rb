class SessionsController < ApplicationController

	def new

	end
	
	def create
		user = User.find_by(login: params[ :login])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Welcome back #{user.login}."
			redirect_to root_path
		else
			flash.now[:alert] = "Falsche Email-Passwort kombination"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path, notice: "Erfolgreich Ausgelogt"
	end
end
