class WelcomeController < ApplicationController
  def index
        @picture= Picture.new
    @picture.user = current_user
  end
end
