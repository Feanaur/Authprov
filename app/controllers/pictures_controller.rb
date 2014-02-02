class PicturesController < ApplicationController

  def new
    @picture = Picture.new
  end

  def create
    without_errors = true
    params[:picture][:pic].each do |p|
      @picture = Picture.new(pic: p, user: current_user)
      if @picture.save
        next
      else
        redirect_to "/pictures/new"
        without_errors = false
        break
      end
    end
    if without_errors
      redirect_to "/pictures/show"
    end
  end

  def show
    @pictures = current_user.pictures
  end

end
