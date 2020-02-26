class PagesController < ApplicationController
  before_action :authenticate_user!

  def my_designs
    @designs = current_user.designs
  end

  def my_purchase_history
    @purchases = current_user.purchases
  end
end
