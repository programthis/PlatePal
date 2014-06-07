class AddCoachIdtoPatient < ActiveRecord::Migration
  def change
  	add_column :patients, :coach_id, :integer
  end
end
