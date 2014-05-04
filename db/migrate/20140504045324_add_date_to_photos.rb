class AddDateToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :date, :datetime
  end
end
