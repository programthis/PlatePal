class RemoveWeightColumn < ActiveRecord::Migration
  def change
  	remove_column :patients, :last_weeks_weight, :float
  end
end
