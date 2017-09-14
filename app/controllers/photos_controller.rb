class PhotosController < ApplicationController
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to artist_path(params[:artist_id]), notice: "Song Deleted!"
  end
end
