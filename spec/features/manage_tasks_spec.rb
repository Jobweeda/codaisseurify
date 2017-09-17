require 'rails_helper'

feature "Manage songs", js: true do
  let!(:artist)    { create :artist, name: "Arctic Monkey" }
  let!(:song)      { create :song, name: "View from the Afternoon", artist: artist }

  scenario "adding a song" do

    visit artist_path(artist)
    fill_in "#song_name", with: "Riot Van"
    page.execute_script("$('#new_song').submit()")
    expect(page).to have_content("Riot Van")
  end


end
