class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
	  @user = User.new(create_params)
	  if @user.save
      session[:user_id] = @user.id
			redirect_to manufactures_path, notice: "Account Created."
		else
			render 'new'
		end
	end

private

	def create_params
		params[:user].permit(:email, :password, :password_confirmation)
	end

end

