class Artist < ApplicationRecord
    has_many :songs, dependent: :destroy
    has_many :photos, dependent: :destroy

    validates :artist_name, presence: true
    
end
