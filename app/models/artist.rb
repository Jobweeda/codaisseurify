class Artist < ApplicationRecord
    has_many :songs, dependent: :destroy

    validates :artist_name, presence: true
end
