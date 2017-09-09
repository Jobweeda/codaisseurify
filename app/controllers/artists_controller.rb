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
end


private


def artist_params
    params
    .require(:artist)
    .permit(:artist_name)
end
