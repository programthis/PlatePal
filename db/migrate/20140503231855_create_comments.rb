class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :photo_id

      t.timestamps
    end
  end
end
