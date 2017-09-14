require 'rails_helper'

describe "destroying a song" do

  let(:artist)       { create :artist, name: "Dire Straits"}


  let!(:song)        { create :song, name: "Monkeys", artist: artist}
  let!(:song_two)    { create :song, name: "Cirrus", artist: artist}
  let!(:song_three)  { create :song, name: "Black Sands", artist: artist}

    it "shows the other songs" do
      song_three.destroy
      visit artist_url(artist)

      expect(page).to have_text("Monkeys")
      expect(page).to have_text("Cirrus")
    end

    it "doesnt show the destroyed song" do
      song_three.destroy
      visit artist_url(artist)

      expect(page).to_not have_text("Black Sands")
    end
end
