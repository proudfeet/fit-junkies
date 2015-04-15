class WorkoutTypeToWorkoutName < ActiveRecord::Migration
  def change
    rename_column :workouts, :workout_type, :workout_name
  end
end
