require 'rails_helper'

describe "Going to an artist" do

  let(:artist)       { create :artist, name: "Dire Straits"}
  let(:artist_two)   { create :artist, name: "Bonobo"}

  let!(:song)        { create :song, name: "Monkeys", artist: artist}
  let!(:song_two)    { create :song, name: "Cirrus", artist: artist}
  let!(:song_three)  { create :song, name: "Black Sands", artist: artist_two}

  it "Shows all songs" do
  visit artist_url(artist)
  #visit artist_url(artist_two)

  # expect(page).to have_text("Black Sands")
  expect(page).to have_text("Monkeys")
  expect(page).to have_text("Cirrus")
 end

  it "Does not show other songs" do
  # visit artist_url(artist_two)
  visit artist_url(artist)

  expect(page).to_not have_text("Black Sands")
  # expect(page).to_not have_text("Monkeys")
  # expect(page).to_not have_text("Cirrus")
 end
end
