class AddIdToGoals < ActiveRecord::Migration
  def change
  	add_column :goals, :patient_id, :integer
  end
end
