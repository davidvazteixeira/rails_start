class ProductsController < ApplicationController

	respond_to :html

	def index
	end

	def new
		@manufacture = Manufacture.find(params[:manufacture_id])
		@product = Product.new
	end

	def create
		@manufacture = Manufacture.find(params[:manufacture_id])

		@product = Product.new
		@product.name = params[:product][:name]
		@product.engine = params[:product][:engine]
		@product.tire = params[:product][:tire]
		@product.manufacture_id = params[:manufacture_id]
		@product.save

		respond_with(@manufacture, @product)

	end

	def edit
		@manufacture = Manufacture.find(params[:manufacture_id])
		@product = Product.find(params[:id])
	end

	def update
		@manufacture = Manufacture.find(params[:manufacture_id])
		@product = Product.find(params[:id])
		@product.name = params[:product][:name]
		@product.engine = params[:product][:engine]
		@product.tire = params[:product][:tire]
		@product.save

		respond_with(@manufacture, @product)

	end

	private
    def create_params
			params[:product].permit(:name, :engine, :tire)
		end

		def update_params
			params[:product].permit(:name, :tire, :engine)
		end
end
