class ChangeArtistnameName < ActiveRecord::Migration[5.1]
  def change
      rename_column :artists, :name, :name
  end
end
