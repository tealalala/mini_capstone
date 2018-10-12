class Api::ProductsController < ApplicationController
  def one_product
    @product = Product.first
    render 'one_product.json.jbuilder'
  end

  def all_products
    @products = Product.all
    render 'all_products.json.jbuilder'
  end

end
