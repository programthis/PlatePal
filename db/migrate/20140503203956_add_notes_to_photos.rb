class AddNotesToPhotos < ActiveRecord::Migration
  def change
  	add_column :photos, :notes, :string
  end
end
