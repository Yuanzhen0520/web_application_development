class ShopperController < ApplicationController
include CurrentCart
before_action :set_cart
  def list
    @products = Product.order(:name)
  end
end
