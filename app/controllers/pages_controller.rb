class PagesController < ApplicationController
  def home
    @cocktail_new = Cocktail.new
    @last_cocktails = Cocktail.last(3)
    @cocktails = Cocktail.all
  end
end
