class CreateWorkoutActivities < ActiveRecord::Migration
  def change
    create_table :workout_activities do |t|
      t.references :workout, index: true
      t.references :activity, index: true
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.integer :distance
      t.integer :time

      t.timestamps null: false
    end
    add_foreign_key :workout_activities, :workouts
    add_foreign_key :workout_activities, :activities
  end
end
