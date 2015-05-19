class AddFocusToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :focus, :string
  end
end
