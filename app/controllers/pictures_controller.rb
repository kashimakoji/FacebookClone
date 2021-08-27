class PicturesController < ApplicationController

  def index
    @picture = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(picture_params)
    redirect_to new_picture_path
  end

  private
  def picture_params
    params.require(:picture).permit(:image, :content)
  end

end
