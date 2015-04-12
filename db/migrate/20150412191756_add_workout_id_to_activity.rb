class AddWorkoutIdToActivity < ActiveRecord::Migration
  def change
    remove_foreign_key :workouts, :activities
    add_foreign_key :activites, :workouts
  end
end
