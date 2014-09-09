class ManufacturesController < ApplicationController

  respond_to :html

  def index
    @manufactures = Manufacture.all
  end

  def show
    @manufacture = Manufacture.find(params[:id])
  end

  def edit
    @manufacture = Manufacture.find(params[:id])
  end

  def update
    respond_with Manufacture.update(params[:id], update_params), location: [:manufactures]
  end

  def new
    @manufacture = Manufacture.new
  end

  def create
		@manufacture = Manufacture.create(create_params)

		if @manufacture
			respond_with @manufacture, location: [:manufactures]
		else
			render 'new'
		end
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
