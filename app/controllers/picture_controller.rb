class PictureController < ApplicationController
  def create
    @picture.user = current_user
  end
end
