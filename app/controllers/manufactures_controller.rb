class ManufacturesController < ApplicationController
  before_filter :authorize, only: [:new, :create, :destroy, :edit, :update]

  respond_to :html

  def index
    @manufactures = Manufacture.all
  end

  def show
    respond_with manufacture
  end

  def edit
    respond_with manufacture
  end

	def update
		respond_with @manufacture = Manufacture.update(params[:id], update_params), location: [:manufactures]
  end

  def new
		@manufacture = Manufacture.new
  end

  def create
		respond_with @manufacture = Manufacture.create(create_params)
  end

  def destroy
    respond_with Manufacture.destroy(params[:id])
  end

  def sucks
    @manufacturer = name_of(params[:id])
  end

  def begins_with_g
    @order = params[:order]
  end

  private

	def manufacture
		@manufacture ||= Manufacture.find(params[:id])
	end

	def name_of id
		if id.to_i == 1
		  @manufacturer = "BMW"
		elsif id.to_i == 2
		  @manufacturer = "GM"
		else
		  @manufacturer = "Ford"
		end
	end

	def update_params
    params[:manufacture].permit(:name, :gross, :active, :rate)
	end

	def create_params
    params[:manufacture].permit(:name, :gross, :active, :rate)
	end

end
