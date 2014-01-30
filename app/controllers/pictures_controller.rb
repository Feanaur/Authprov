class PicturesController < ApplicationController

  def create
    @picture = Picture.new(params.permit(:pic))
    @picture.user = current_user
    authorize! :create, @picture.user
    if @picture.save
      redirect_to "/users/profile"
    else
      erb :"welcome/index"
    end
  end

  def show
    @pictures = Picture.find(params[current_user])
  end
end
