class DesignsController < ApplicationController
  before_action :authenticate_user!

  def show
    @design = Design.find(params[:id])
  end

  def new
    @design = Design.new
  end

  def create
    @design = Design.new(design_params)
    @design.user = current_user
    if @design.save
      redirect_to design_path(@design)
    else
      render :new
    end
  end

  def edit
    @design = Design.find(params[:id])
  end

  def update
    @design = Design.find(params[:id])
    @design.update(design_params)
  end

  def destroy
    @design = Design.find(params[:id])
    @design.destroy
    redirect_to dashboard_path(current_user)
  end

  private

  def design_params
    params.require(:design).permit(:name, :indexed_colors, :pattern, :file_type, :layers, :price, :photo, tag_ids: [], category_ids: [] )
  end
end
