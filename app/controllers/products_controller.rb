class ProductsController < ApplicationController

	respond_to :html

	def index
		products
	end

	def show
		product
	end

	def new
		@product = products.new
	end

	def create
		respond_with manufacture, @product = products.create(create_params)
	end

	def edit
		product
	end

	def update
		respond_with manufacture, @product = products.update(params[:id], update_params)
	end

	private

		def manufacture
			@manufacture ||= Manufacture.find(params[:manufacture_id])
		end

		def product
			@product ||= products.find(params[:id])
		end

		def products
			@products ||= manufacture.products
		end

		def create_params
			params[:product].permit(:name, :engine, :tire)
		end

		def update_params
			params[:product].permit(:name, :tire, :engine)
		end
end
