class ProductsController < ApplicationController

	respond_to :html

	def index
		@products = products
	end

	def show
		@manufacture = Manufacture.find(params[:manufacture_id])
		@product = Product.find(params[:id])
	end

	def new
		@manufacture = Manufacture.find(params[:manufacture_id])
		@product = Product.new
	end

	def create
		@product = products.create(create_params)
		respond_with(manufacture, @product)
	end

	def edit
		@product = products.find(params[:id])
	end

	def update
		@product = products.update(params[:id], update_params)
		respond_with(manufacture, @product)
	end

	private

		def manufacture
			@manufacture ||= Manufacture.find(params[:manufacture_id])
		end

		def products
			manufacture.products
		end

		def create_params
			params[:product].permit(:name, :engine, :tire)
		end

		def update_params
			params[:product].permit(:name, :tire, :engine)
		end
end
