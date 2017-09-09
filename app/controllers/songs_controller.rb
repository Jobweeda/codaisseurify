class SongsController < ApplicationController
def index
    @songs = Song.all
end

def new
    @song = Song.new
end

end

private

def song_params
    params.require(:song).permit(:song_name, :artist_id)

end
