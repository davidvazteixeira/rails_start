class DetailController < ApplicationController
	def show
		@manufacture_id = params[:manufacture_id].to_i
	end
end
