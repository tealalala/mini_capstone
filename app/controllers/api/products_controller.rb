class Api::ProductsController < ApplicationController
  def index
    search_item = params[:input_name]
    @products = Product.where('name LIKE ?', "%#{search_item}%").order(:price => :asc)
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
