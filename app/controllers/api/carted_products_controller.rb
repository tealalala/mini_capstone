class Api::CartedProductsController < ApplicationController
  def index
    if current_user
      @carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)
      render 'index.json.jbuilder'
    else
      render json: [], status: :unauthorized
    end
  end

  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: 'carted',
      user_id: current_user.id
    )
    @carted_product.save
    render 'show.json.jbuilder'
  end
end
