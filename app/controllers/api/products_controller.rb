class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(name: params[:input_name], price: params[:input_price], image_url: params[:input_image_url], description: params[:input_description])
    if @product.save
      p "data is validated"
      render 'show.json.jbuilder'
    else
      p "data is invalid"
      render 'error.json.jbuilder'
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:input_name]
    @product.price = params[:input_price]
    @product.image_url = params[:input_image_url]
    @product.description = params[:input_description]
    if @product.save
      p "data is validated"
      render 'show.json.jbuilder'
    else
      p "data is invalid"
      render 'error.json.jbuilder'
    end
  end
end
