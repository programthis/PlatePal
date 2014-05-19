class PhotosController < ApplicationController
	
  def index
  	@photos = Photo.all
  end

  def new
  	@photo = Photo.new
  end

  def create
  	@photo = Photo.new(photo_params)
  	@photo.patient = current_patient
    if @photo.save
      redirect_to root_path, notice: "Added new photo!"
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(photo_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
  	@photo = Photo.find(params[:id])
    @comment = Comment.new
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to root_path
  end

  private
  def photo_params
    params.require(:photo).permit(:name,:url, :notes);
  end
end
