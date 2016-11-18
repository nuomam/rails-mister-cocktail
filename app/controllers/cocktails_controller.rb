class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @cocktail_new = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      @dose = Dose.new
      redirect_to cocktail_path(@cocktail)
    else
      flash[:alert] = "Please give a name to your new cocktail :)."
      redirect_to cocktails_path
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @cocktail_new = Cocktail.new
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
