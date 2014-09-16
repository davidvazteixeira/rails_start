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

https://www.google.com.br/search?q=3d+printer+Acetone+Vapor&biw=1362&bih=658&source=lnms&tbm=isch&sa=X&ei=A4AYVNWqIejUiwLnl4HIBQ&ved=0CAcQ_AUoAg
