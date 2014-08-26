class ManufacturesController < ApplicationController
  
  def index
  end

  def show
    @manufacturer = name_of(params[:id])
  end

  def begins_with_g
    @order = params[:order]
  end 

  def sucks
    @manufacturer = name_of(params[:id])
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

end