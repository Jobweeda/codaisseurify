class RemoveImageurlFromArtists < ActiveRecord::Migration[5.1]
  def change
    remove_column :artists, :image_url, :artists
  end
end
