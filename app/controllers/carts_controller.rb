class CartsController < ApplicationController
  def update
    Cart.first.update(cart_params)
  end

  def cart_params
    params.require(:cart).permit(taco_ids: [])
  end
end