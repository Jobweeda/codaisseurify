class AddArtistNameToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :name, :string
  end
end
