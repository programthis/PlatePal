class AddColumnsToPatients < ActiveRecord::Migration
  def change
  	add_column :patients, :name, :string
  	add_column :patients, :age, :integer
  	add_column :patients, :weight, :integer
  	add_column :patients, :weight_goal, :integer
  	add_column :patients, :height, :integer
  	add_column :patients, :phone, :integer
  	add_column :patients, :email, :string
  end
end
