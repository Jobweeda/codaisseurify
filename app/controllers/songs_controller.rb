class SongsController < ApplicationController

    def index
        @songs = Song.all
        @song = Song.new
        
    end

    def new
        @song = Song.new

    end

    # def create
    #     @song = Song.new(song_params)
    #     @song.artist_id = params[:artist_id]
    #
    #     if @song.save
    #         redirect_to artist_path(params[:artist_id]), notice: "Song Saved!"
    #     else
    #         render 'new'
    #     end
    # end

    def create
      @song = Song.new(song_params.merge(artist_id: params[:artist_id]))

    respond_to do |format|
      if @song.save
        format.html { redirect_to artist_path(@song.artist), notice: "Song Saved!" }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new}
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

    def destroy
        @song = Song.find(params[:id])
        @song.destroy

        respond_to do |format|
          format.html { redirect_to artist_path(params[:artist_id]), notice: "Song removed"}
          format.json { head :no_content }
        end
        # redirect_to artist_path(params[:artist_id]), notice: "Song Deleted!"
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist_id)
    end
end
