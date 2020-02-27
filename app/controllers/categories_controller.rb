class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    add_breadcrumb "Categories", :categories_path
    add_breadcrumb @category.name, category_path(@category)
    @designs = @category.designs
  end
end
