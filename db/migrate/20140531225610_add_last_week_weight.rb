class AddLastWeekWeight < ActiveRecord::Migration
  def change
  	add_column :patients, :last_weeks_weight, :float
  end
end
