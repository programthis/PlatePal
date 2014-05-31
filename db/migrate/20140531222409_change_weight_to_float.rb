class ChangeWeightToFloat < ActiveRecord::Migration
  def change
  	remove_column :patients, :weight, :integer
  	remove_column :patients, :height, :integer
  	remove_column :patients, :last_weeks_weight, :integer
  	remove_column :patients, :current_weeks_weight, :integer
  	add_column :patients, :weight, :float
  	add_column :patients, :height, :float
  	add_column :patients, :last_weeks_weight, :float
  	add_column :patients, :current_weeks_weight, :float
  end
end
