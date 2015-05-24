class AddUserIdToWorkoutLogs < ActiveRecord::Migration
  def change
  	add_column :workout_logs, :user_id, :integer
  	add_index :workout_logs, :user_id
  end
end
