class Api::SuppliersController < ApplicationController
  def index
    @supplier = Supplier.all
    # search_item = params[:input_name]
    # @suppliers = Supplier.where("name LIKE ?", "%#{search_item}%")
    # if params[:sort] == 'price'
    #   @suppliers = @suppliers.order(:id => :asc)
    # else
    #   @suppliers = @suppliers.order(:price => :asc)
    # end
    render 'index-suppliers.json.jbuilder'
  end

  def show
    # @supplier = Supplier.find_by(id: params[:id])
    # render 'show-supplier.json.jbuilder'
  end

  def create
    # @supplier = Supplier.new(name: params[:input_name], price: params[:input_price], image_url: params[:input_image_url], description: params[:input_description])
    # if @supplier.save
    #   p "data is validated"
    #   render 'show-supplier.json.jbuilder'
    # else
    #   p "data is invalid"
    #   render 'error-supplier.json.jbuilder'
    # end
  end

  def update
    # @supplier = Supplier.find_by(id: params[:id])
    # @supplier.name = params[:input_name]
    # @supplier.price = params[:input_price]
    # @supplier.image_url = params[:input_image_url]
    # @supplier.description = params[:input_description]
    # if @supplier.save
    #   p "data is validated"
    #   render 'show-supplier.json.jbuilder'
    # else
    #   p "data is invalid"
    #   render 'error-supplier.json.jbuilder'
    # end
  end
end
