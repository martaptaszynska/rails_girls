class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save!
    redirect_to photos_path
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
     @photo = Photo.find(params[:id])
     @photo.update_attributes(photo_params)
    redirect_to photos_path
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.delete
    redirect_to photos_path
  end
   
  def photo_params
    params.require(:photo).permit(:title, :photo_url, :description, :date)
  end

end
