require 'rails_helper'

RSpec.describe Song, type: :model do
    describe "song" do
        it "shows the name of the song" do
            song = build(:song, name: "Balaclava")
            expect(song.name).to eq "Balaclava"
        end
    end
end
