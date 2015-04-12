class FixWorkoutAssociation < ActiveRecord::Migration
  def change
    add_reference :activities, :workout
    remove_reference :workouts, :activity
  end
end
