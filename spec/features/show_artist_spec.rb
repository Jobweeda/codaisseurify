require 'rails_helper'

describe "clicking on an artist" do

  let(:artist)       { create :artist, name: "Dire Straits"}
  let(:artist_two)   { create :artist, name: "Nine Inch Nails" }
  let(:artist_three) { create :artist, name: "The Beatles" }

  it "redirects to the artistpage" do
    visit artist_url(artist)


    expect(page).to have_text("Dire Straits")
    #expect(page).to have_text("Nine Inch Nails")
    #expect(page).to have_text("The Beatles")
   end

    it "Does not show other artists" do
    # visit artist_url(artist_two)
    visit artist_url(artist)

    #expect(page).to have_text("Dire Straits")
    expect(page).to_not have_text("Nine Inch Nails")
    expect(page).to_not have_text("The Beatles")
  end
end
