class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.index.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @product = Product.new(name: params[:input_name], price: params[:input_price], description: params[:input_description])
    @product.save
    if @product.save
      p "data is validated"
      redirect_to '/products'
    else
      p "data is invalid"
      render 'error.json.jbuilder'
    end
  end
end
