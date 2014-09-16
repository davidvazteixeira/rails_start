class SessionsController < ApplicationController
  def new
  end

  def create

		if user_auth?
			session[:user_id] = @user.id
			redirect_to manufactures_path
		else
			flash[:warning] = "Trouble!"
			render 'new'
		end

	end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Goog bye!"
    redirect_to manufactures_path
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
