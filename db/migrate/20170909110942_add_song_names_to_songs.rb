class AddSongNamesToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :song_name, :string
  end
end
