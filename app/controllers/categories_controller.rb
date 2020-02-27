class CategoriesController < ApplicationController
  before_action :authenticate_user!

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Categories", :categories_path


  def index
    @categories = Category.all
    add_breadcrumb "index", index_path
  end

  def show
    @category = Category.find(params[:id])
    @designs = @category.designs
  end
end
