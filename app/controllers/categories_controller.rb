class CategoriesController < ApplicationController
  def create
  end

  def new
  end

  def show
    @category = Category.find(params[:id])
    
  end

  def index
    @categories = Category.all
  end
end
