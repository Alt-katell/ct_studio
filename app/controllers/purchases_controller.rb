class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = current_user
    @design = Design.find(params[])

    @purchase = Purchase.new()
  end
end
