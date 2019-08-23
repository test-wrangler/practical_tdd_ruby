class OrdersController < ApplicationController
  def create
    @order = Order.place
  end
end