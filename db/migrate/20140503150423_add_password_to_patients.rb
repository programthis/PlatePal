class AddPasswordToPatients < ActiveRecord::Migration
  def change
  	add_column :patients, :password_digest, :string
  end
end
