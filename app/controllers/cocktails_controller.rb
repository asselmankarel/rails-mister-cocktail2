class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[new edit show destroy]

  def index
    @cocktails = params.include?(:query) ? Cocktail.where("lower(name) LIKE '%#{params[:query].downcase}%'") : Cocktail.all
  end

  def show; end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :image)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
