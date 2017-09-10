class Artist < ApplicationRecord
    has_many :songs, dependent: :destroy
    has_one :photo

    validates :artist_name, presence: true
end
