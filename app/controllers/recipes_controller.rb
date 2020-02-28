class RecipesController < ApplicationController
  def index
    @search = params[:searching] || 'chocolate'
    @recipes = Recipe.for @search
  end
end
