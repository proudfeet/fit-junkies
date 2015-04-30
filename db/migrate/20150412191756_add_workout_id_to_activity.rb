class AddWorkoutIdToActivity < ActiveRecord::Migration
  def change
    remove_foreign_key :workouts, :activities
    add_foreign_key :activities, :workouts
  end
end
