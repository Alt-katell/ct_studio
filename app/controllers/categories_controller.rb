class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.all
  end

  def show
    if params[:query]
      @category = Category.find(params[:id])
      @designs = Design.global_search(params[:query]).select{ |design| design.categories.include? (@category) }
    else
      @category = Category.find(params[:id])
      @designs = @category.designs
    end

    add_breadcrumb "Categories", :categories_path
    add_breadcrumb @category.name, category_path(@category)
  end
end
