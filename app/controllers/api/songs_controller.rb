class Api::SongsController < ApplicationController
skip_before_action  :verify_authenticity_token
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

  def create
    song = Song.new(song_params)

    if song.save
      render status: 201, json: {
        message: "Song added",
        song: song
      }.to_json
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def update
    song = Song.find(params[:id])
    if song.update(song_params)
        render status: 200, json: {
        message: "Song updated",
        song: song
      }.to_json
    else
       render status: 422, json: {
        message: "Something went wrong! The song is not updated",
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = @artist.song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song removed"
    }.to_json
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end
