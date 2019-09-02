class CartsController < ApplicationController
  def update
    @cart = Cart.first
    @cart.update(cart_params)
    @cart.reload
    render "home/index"
  end

  def cart_params
    params.require(:cart).permit(menu_item_ids: [])
  end
end