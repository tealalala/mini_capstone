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
    @product = Product
    @suppliers = Supplier.all
    render 'new.html.erb'
  end

  def create
    @product = Product.new(name: params[:name], price: params[:price], description: params[:description])
    @product.save
    if @product.save
      p "data is validated"
      redirect_to '/products'
    else
      p "data is invalid"
      render 'error.json.jbuilder'
    end
  end

  def edit
    @suppliers = Supplier.all
    @product = Product.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    if @product.save
      p "data is validated"
      redirect_to '/products'
    else
      p "data is invalid"
      render 'error.json.jbuilder'
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to '/products'
  end

end
