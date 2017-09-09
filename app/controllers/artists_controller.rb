class ArtistsController < ApplicationController
    def show
        @artists = Artist.find(params[:id])
    end

    def index
        @artists = Artist.all
    end

    def artist_name
        Artist.artist_name

    end
end


private


def artist_params
    params
    .require(:artist)
    .permit(:artist_name)
end
