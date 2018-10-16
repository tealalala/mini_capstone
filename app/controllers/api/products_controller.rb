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

  def create
    @product = Product.new(name: params[:input_name], price: params[:input_price], image_url: params[:input_image_url], description: params[:input_description])
    @product.save
    render 'show.json.jbuilder'
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name = params[:input_name]
    @product.price = params[:input_price]
    @product.image_url = params[:input_image_url]
    @product.description = params[:input_description]
    @product.save
    render 'show.json.jbuilder'
  end
end
