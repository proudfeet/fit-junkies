class AddWorkoutIdToWorkoutLog < ActiveRecord::Migration
  def change
  	add_column :workout_logs, :workout_id, :integer 
  end
end
