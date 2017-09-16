class Api::ArtistsController < ApplicationController

  def index
    render status: 200, json: {
      songs: Song.all
    }.to_json
  end

  def show
    song =  Song.find(params[:id])

    render status: 200, json: {
      song: song
    }.to_json
  end
end
