class RemoveWeightGoalColumn < ActiveRecord::Migration
  def change
  	remove_column :patients, :weight_goal, :integer
  	add_column :patients, :last_weeks_weight, :integer
  	add_column :patients, :current_weeks_weight, :integer
  end
end
