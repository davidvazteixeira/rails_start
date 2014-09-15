class SessionsController < ApplicationController
  def new
  end

  def create

		if user_auth?
			session[:user_id] = @user.id
			redirect_to manufactures_path, notice: "You are in!"
			@message = 'OK!'
		else
			flash.now.alert = "Try again..."
			@message = params[:sessions][:email]
			render 'new'
		end

	end

private

	def user_auth?
		@user = User.find_by_email(params[:sessions][:email])
		if @user && @user.authenticate(params[:sessions][:password])
			@user
		else
			false
		end
	end

end
