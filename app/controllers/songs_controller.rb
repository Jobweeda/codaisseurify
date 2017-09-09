class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(song_params)
        @song.artist_id = params[:artist_id]
        
        if @song.save
            redirect_to artist_path(params[:artist_id]), notice: "Song Saved!"
        else
            render 'new'
        end
    end

    def destroy
        @song = Song.find(params[:id])
        @song.destroy
        redirect_to artist_path(params[:artist_id]), notice: "Song Deleted!"
    end

    private

    def song_params
        params.require(:song).permit(:song_name, :artist_id)
    end
end
