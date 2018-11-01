class Api::OrdersController < ApplicationController
  def index
    if current_user
      @orders = current_user.orders
      render 'index.json.jbuilder'
    else
      render json: [], status: :unauthorized
    end
  end

  def create
    # carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)
    #
    # carted_products.each do |carted_product|
    #   p carted_product
    # end

    product = Product.find_by(id: params[:product_id])
    price = product.price
    calculated_subtotal = params[:quantity].to_i * price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )

    if @order.save
      p "order is a success"
      render 'show.json.jbuilder'
    else
      p "order has failed"
      render 'errors.json.jbuilder'
    end
  end
end
