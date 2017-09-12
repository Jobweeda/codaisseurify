class ChangeSongnameName < ActiveRecord::Migration[5.1]
  def change
      rename_column :songs, :, :name
  end
end
