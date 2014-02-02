class PicturesController < ApplicationController

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user = current_user
    authorize! :create, @picture.user
    if @picture.save
      redirect_to "/pictures/show"
    else
      erb :"pictures/new"
    end
  end

  def show
    @pictures = current_user.pictures
  end

  private 

  def picture_params
    params.require(:picture).permit(:pic)
  end
end
