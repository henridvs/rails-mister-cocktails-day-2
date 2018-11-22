class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.eager_load(doses: :ingredient).all
  end
end
