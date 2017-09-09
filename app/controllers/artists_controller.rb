class ArtistsController < ApplicationController
    def show
        @artist = Artist.find(params[:id])
    end

    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)

        if @artist.save
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


    def artist_params
        params.require(:artist).permit(:artist_name)
    end
end
