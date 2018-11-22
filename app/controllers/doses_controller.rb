class DosesController < ApplicationController
  def new
    @ingredients = Ingredient.all
    @cocktail    = Cocktail.find(params[:cocktail_id])
    @dose        = Dose.new
  end

  def create
    @dose     = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])

    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktails_path
    else
      @ingredients = Ingredient.all
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
