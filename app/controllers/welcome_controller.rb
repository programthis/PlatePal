class WelcomeController < ApplicationController
  def index
  end

  def show
  	@photos = Photo.all
  end

end
