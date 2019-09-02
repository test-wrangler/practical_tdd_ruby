class HomeController < ApplicationController
  def index
    @cart = Cart.first
  end
end