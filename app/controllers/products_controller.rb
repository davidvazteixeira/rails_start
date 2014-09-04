class ProductsController < ApplicationController

	respond_to :html

	def index
	end

	def new
		@product = products.new
		#@product = Product.new
	end

	def create
		#@manufacture = Manufacture.find(params[:manufacture_id])

		#@product = Product.new
		#@product.name = params[:product][:name]
		#@product.engine = params[:product][:engine]
		#@product.tire = params[:product][:tire]
		#@product.manufacture_id = params[:manufacture_id]

		#@product = Product.create(create_params) do |u|
		#	u.manufacture_id = params[:manufacture_id]
		#end

		respond_with(manufacture, products.create(create_params))

	end

	def edit
		#@manufacture = Manufacture.find(params[:manufacture_id])]@manufacture = manufacture

		#manufacture
		#@product = Product.find(params[:id])
		@product = products.find(params[:id])
	end

	def update
		#@manufacture = Manufacture.find(params[:manufacture_id])
		#@product = Product.find(params[:id])
		#@product.name = params[:product][:name]
		#@product.engine = params[:product][:engine]
		#@product.tire = params[:product][:tire]
		#@product.save

		respond_with(manufacture, products.update(params[:id], update_params))

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
