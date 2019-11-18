class OrderItemsController < ApplicationController
  def index
  end

  def create
    current_cart.add_item(
      product_id: params[:product_id],
      quantity: params[:quantity]
    )

    redirect_to_cart_path
  end
end
