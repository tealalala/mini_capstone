class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def show
    product_id = params[:id]
    @product = Product.first
    render 'show.json.jbuilder'
  end

end
