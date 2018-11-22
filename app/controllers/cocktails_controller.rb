class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.eager_load(doses: :ingredient).all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      # redirect_to cocktail_path(cocktail)
      redirect_to cocktails_path
    else
      render :new
    end
  end


  private
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
