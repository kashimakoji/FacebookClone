class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update]

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to pictures_path, notice: "投稿しました"
    else
      render :new
    end
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
