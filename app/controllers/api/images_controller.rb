class Api::ImagesController < ApplicationController
  def index
    @images = Image.all
    render 'index-images.json.jbuilder'
  end

  def show
    @image = Image.find_by(id: params[:id])
    render 'show-images.json.jbuilder'
  end
end
