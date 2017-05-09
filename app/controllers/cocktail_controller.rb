class CocktailController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    redirect_to cocktail_path(@cocktail)
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    redirect_to coktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def params_cocktail
    params.require(:cocktail).permit(:name)
  end
end
