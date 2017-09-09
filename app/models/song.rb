class Song < ApplicationRecord
    belongs_to :artist

    validates :song_name, presence: true
    validates :song_name, uniqueness: true 
end
