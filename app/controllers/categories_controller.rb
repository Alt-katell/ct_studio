class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.all
  end

  def show
    if params[:query]
      @designs = Design.search(params[:query])

    else
      @category = Category.find(params[:id])
      @designs = @category.designs


    # add_breadcrumb "Categories", :categories_path
    # add_breadcrumb @category.name, category_path(@category)
    end
  end
end
