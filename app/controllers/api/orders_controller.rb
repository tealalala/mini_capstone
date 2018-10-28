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
    # find_order = Order.find_by(id: params[:product_id])
    # @find_product = find_order.product
    # @find_subtotal = find_order.product.price
    product = Product.find_by(id: params[:product_id])
    price = product.price
    calculated_subtotal = params[:quantity].to_i * price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
    # if current_user
    #   @order = current_user.order
    #   render 'show.json.jbuilder'
    # else
    #     render json: [], status: :unauthorized
    # end

    if @order.save
      p "order is a success"
      render 'show.json.jbuilder'
    else
      p "order has failed"
      render 'errors.json.jbuilder'
    end
  end
end
