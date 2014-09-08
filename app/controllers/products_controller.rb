class ProductsController < ApplicationController

	respond_to :html

	def index
	end

	def new
<<<<<<< HEAD
		@manufacture = Manufacture.find(params[:manufacture_id])
=======
>>>>>>> 1354cf5189beffc272e81e97abf941f45131e080
		@product = products.new
		#@product = Product.new
	end

	def create
		#@manufacture = Manufacture.find(params[:manufacture_id])
<<<<<<< HEAD

		#@product = Product.new
		#@product.name = params[:product][:name]
		#@product.engine = params[:product][:engine]
		#@product.tire = params[:product][:tire]
		#@product.manufacture_id = params[:manufacture_id]

		#@product = Product.create(create_params) do |u|
		#	u.manufacture_id = params[:manufacture_id]
		#end

		@product = products.create(create_params)
		respond_with(manufacture, @product)
=======

		#@product = Product.new
		#@product.name = params[:product][:name]
		#@product.engine = params[:product][:engine]
		#@product.tire = params[:product][:tire]
		#@product.manufacture_id = params[:manufacture_id]

		#@product = Product.create(create_params) do |u|
		#	u.manufacture_id = params[:manufacture_id]
		#end

		respond_with(manufacture, products.create(create_params))
>>>>>>> 1354cf5189beffc272e81e97abf941f45131e080

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
<<<<<<< HEAD
		@product = products.update(params[:id], update_params)
		respond_with(manufacture, @product)
=======

		respond_with(manufacture, products.update(params[:id], update_params))
>>>>>>> 1354cf5189beffc272e81e97abf941f45131e080

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
