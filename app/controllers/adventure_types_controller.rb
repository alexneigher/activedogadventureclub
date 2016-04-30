class AdventureTypesController < ApplicationController

  def index
    @adventure_types = AdventureType.all
  end

  def new
    @adventure_type = AdventureType.new
  end

  def create
    @adventure_type = AdventureType.create(adventure_type_params)
    redirect_to adventure_types_path
  end


  private
    def adventure_type_params
      params.require(:adventure_type).permit(:name, :price_per_day)
    end


end