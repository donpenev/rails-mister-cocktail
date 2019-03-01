class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    # raise
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.select { |dose| dose.cocktail_id == params[:id].to_i }
    @ingredients = Ingredient.all

  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    # raise
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktails_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end



