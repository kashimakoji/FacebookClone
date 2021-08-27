class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update]

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(picture_params)
    redirect_to new_picture_path
  end

  def show
  end

  private
  def picture_params
    params.require(:picture).permit(:image, :content)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end

end
