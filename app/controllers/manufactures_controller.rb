class ManufacturesController < ApplicationController
  
  respond_to :html 

  # CRUD - Start
  def index
    @manufactures = Manufacture.all
  end

  def show
    #@manufacturer = name_of(params[:id])
    @manufacturer = Manufacture.find(params[:id])
  end

  def edit
    @manufacturer = Manufacture.find(params[:id])
  end

  def update
    #@manufacture = Manufacture.find(params[:id])
    #@manufacture.name = params[:manufacture][:name]
    #@manufacture.save
    #Manufacture.update(params[:id], update_params )
    respond_with Manufacture.update(params[:id], update_params), location: [:manufactures]
    #redirect_to manufactures_path
  end

  def new
    @manufacturer = Manufacture.new
  end

  def create
    #@manufacture = Manufacture.new
    #@manufacture.name = params[:manufacture][:name]
    #@manufacture.save

    respond_with Manufacture.create(create_params) 
    #redirect_to manufactures_path
  end

  def destroy
    #@manufacture = Manufacture.find(params[:id])
    respond_with Manufacture.destroy(params[:id])
    #redirect_to manufactures_path
  end

  # CRUD End

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
      params[:manufacture].permit(:name)
    end

    def create_params
      params[:manufacture].permit(:name)
    end

end