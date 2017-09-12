require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "artist" do
      it "shows the name of the artist" do
          artist = build(:artist, name: "Arctic Monkeys")
          expect(artist.name).to eq "Arctic Monkeys"
      end
  end
end
