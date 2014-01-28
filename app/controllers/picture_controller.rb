class PictureController < ApplicationController
  def create
    @picture= Picture.new
    @picture.user = current_user
  end
end
