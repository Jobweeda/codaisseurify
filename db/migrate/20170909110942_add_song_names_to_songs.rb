class AddSongNamesToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :, :string
  end
end
