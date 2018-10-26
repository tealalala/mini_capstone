class Api::OrdersController < ApplicationController
  def index
    @orders = Order.all
    render 'index.json.jbuilder'
  end

  def create
    find_order = Order.find_by(id: params[:product_id])
    @find_product = find_order.product
    @find_subtotal = find_order.product.price

    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity]
      # subtotal: @product_id_order,
      # tax: @product_id_order.tax,
      # total: @product_id_order.total
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
