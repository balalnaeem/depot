class StoreController < ApplicationController
  def index
    session[:counter] = 0 unless session[:counter]
    @products = Product.order(:title)
    session[:counter] += 1
    @counter = session[:counter]
  end
end
