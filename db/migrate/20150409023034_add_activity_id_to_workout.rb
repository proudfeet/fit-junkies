class AddActivityIdToWorkout < ActiveRecord::Migration
  def change
    add_reference :workouts, :activity, index: true
    add_foreign_key :workouts, :activities
  end
end
