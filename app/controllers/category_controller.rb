class CategoryController < ApplicationController
  
  def new
  	@category = Category.new
  end

  def index
  end

  def create
  	@category = Category.new(category_params)
  	@category.save
  end

  def update
  end

  def delete
  end

  private
  	def category_params
  	  params.require(:category).permit(:description)
  	end

end
