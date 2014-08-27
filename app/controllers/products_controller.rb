class ProductsController < ApplicationController
	def show
		@manufacture = params[:manufacture_id]
	end
end
