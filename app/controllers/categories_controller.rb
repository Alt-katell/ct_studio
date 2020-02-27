class CategoriesController < ApplicationController
  before_action :authenticate_user!
  add_breadcrumb "Home", :root_path

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @designs = @category.designs
  end
end
