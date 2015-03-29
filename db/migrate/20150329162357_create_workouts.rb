class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :workout_type
      t.text :notes

      t.timestamps null: false
    end
  end
end
