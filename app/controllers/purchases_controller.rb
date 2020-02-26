class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = current_user
    @design = Design.find(params[:design_id])

    @purchase = Purchase.create({ user_id: @user.id, design_id: @design.id })
    redirect_to design_purchase_path(@purchase)
  end

  def show
    @purchase = Purchase.find(params[:id])
  end
end
