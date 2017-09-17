class ArtistsController < ApplicationController
    def show
      @artist = Artist.find(params[:id])
      @songs = @artist.songs.build
    end

    def index
      @artists = Artist.all
      @song = Song.new
     
    end

    def new
      @artist = Artist.new
    end

    def create
      @artist = Artist.new(artist_params)
        if @artist.save
          image_params.each do |image|
          @artist.photos.create(image: image)
        end

          redirect_to @artist
        else
          render 'new'
      end
    end

    def destroy
      @artist = Artist.find(params[:id])
      @artist.destroy
      redirect_to root_path, notice: "Artist deleted"
    end


  private


    def image_params
      params[:images].present? ? params.require(:images) : []
    end

    def artist_params
        params.require(:artist).permit(:name)
    end
end
